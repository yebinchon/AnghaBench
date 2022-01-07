
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int TINF_DATA ;


 scalar_t__ uzlib_get_byte (int *) ;

uint32_t tinf_get_le_uint32(TINF_DATA *d)
{
    uint32_t val = 0;
    int i;
    for (i = 4; i--;) {
        val = val >> 8 | ((uint32_t)uzlib_get_byte(d)) << 24;
    }
    return val;
}
