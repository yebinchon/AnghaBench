
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bitrev16 (int) ;

uint32_t bitrev32(uint32_t bits) {
    bits = (uint32_t)bitrev16(bits & 0x0000ffff) << 16 | bitrev16((bits & 0xffff0000) >> 16);
    return bits;
}
