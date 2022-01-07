
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t convert_byte_array_to_32_bit(uint8_t *data) {
    union {
        uint32_t u32;
        uint8_t u8[4];
    } long_addr;

    uint8_t index;

    for (index = 0; index < 4; index++) {
        long_addr.u8[index] = *data++;
    }

    return long_addr.u32;
}
