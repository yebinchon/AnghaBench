
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;



uint8_t bitpop32(uint32_t bits) {
    uint8_t c;
    for (c = 0; bits; c++) bits &= bits - 1;
    return c;
}
