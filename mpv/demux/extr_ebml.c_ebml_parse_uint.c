
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int assert (int) ;

__attribute__((used)) static uint64_t ebml_parse_uint(uint8_t *data, int length)
{
    assert(length >= 0 && length <= 8);
    uint64_t r = 0;
    while (length--)
        r = (r << 8) + *data++;
    return r;
}
