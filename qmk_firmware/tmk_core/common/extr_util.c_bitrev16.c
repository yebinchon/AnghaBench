
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int bitrev (int) ;

uint16_t bitrev16(uint16_t bits) {
    bits = bitrev(bits & 0x00ff) << 8 | bitrev((bits & 0xff00) >> 8);
    return bits;
}
