
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void convert_16_bit_to_byte_address(uint16_t value, uint8_t *data) {
    data[0] = value & 0xFF;
    data[1] = (value >> 8) & 0xFF;
}
