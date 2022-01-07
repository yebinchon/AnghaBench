
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t convert_byte_array_to_16_bit(uint8_t *data) { return (data[0] | ((uint16_t)data[1] << 8)); }
