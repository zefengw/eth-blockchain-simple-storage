// SPDX-License-Identifier: MIT

// compiler version between 0.6.0 and 0.9.0
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    uint256 favoriteNumber;

    // structs are like an inner class definition
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // a dynamic array
    People[] public people;

    // associate strings with unsigned integers of a maximum of 256 bits
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view keyword for when you just want to access something
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }


    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
