
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static uint16_t get_hword(uint8_t *p) {
    uint16_t hw;

    hw = (uint16_t)*p++;
    hw |= (uint16_t)*p << 8U;
    return hw;
}
