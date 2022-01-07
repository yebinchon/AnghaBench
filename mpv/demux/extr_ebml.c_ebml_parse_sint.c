
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;


 int assert (int) ;

__attribute__((used)) static int64_t ebml_parse_sint(uint8_t *data, int length)
{
    assert(length >= 0 && length <= 8);
    if (!length)
        return 0;
    uint64_t r = 0;
    if (*data & 0x80)
        r = -1;
    while (length--)
        r = (r << 8) | *data++;
    return (int64_t)r;
}
