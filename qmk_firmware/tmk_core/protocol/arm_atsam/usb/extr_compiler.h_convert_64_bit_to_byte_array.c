
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static inline void convert_64_bit_to_byte_array(uint64_t value, uint8_t *data) {
    uint8_t index = 0;

    while (index < 8) {
        data[index++] = value & 0xFF;
        value = value >> 8;
    }
}
