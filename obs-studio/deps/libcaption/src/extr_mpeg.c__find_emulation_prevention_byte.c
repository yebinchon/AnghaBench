
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static size_t _find_emulation_prevention_byte(const uint8_t* data, size_t size)
{
    size_t offset = 2;

    while (offset < size) {
        if (0 == data[offset]) {

            offset += 1;
        } else if (3 != data[offset]) {

            offset += 3;
        } else if (0 != data[offset - 1]) {

            offset += 2;
        } else if (0 != data[offset - 2]) {

            offset += 1;
        } else {

            return offset;
        }
    }

    return size;
}
