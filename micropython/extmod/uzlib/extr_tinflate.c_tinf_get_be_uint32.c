
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int TINF_DATA ;


 int uzlib_get_byte (int *) ;

uint32_t tinf_get_be_uint32(TINF_DATA *d)
{
    uint32_t val = 0;
    int i;
    for (i = 4; i--;) {
        val = val << 8 | uzlib_get_byte(d);
    }
    return val;
}
