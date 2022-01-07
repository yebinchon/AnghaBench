
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static inline uint64_t convert_byte_array_to_64_bit(uint8_t *data) {
    union {
        uint64_t u64;
        uint8_t u8[8];
    } long_addr;

    uint8_t index;

    for (index = 0; index < 8; index++) {
        long_addr.u8[index] = *data++;
    }

    return long_addr.u64;
}
