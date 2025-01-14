
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char dwarf2_get_byte (int ) ;

__attribute__((used)) static unsigned long dwarf2_get_leb128_as_unsigned(const unsigned char* ptr, const unsigned char** end)
{
    unsigned long ret = 0;
    unsigned char byte;
    unsigned shift = 0;

    do
    {
        byte = dwarf2_get_byte(ptr++);
        ret |= (byte & 0x7f) << shift;
        shift += 7;
    } while (byte & 0x80);

    if (end) *end = ptr;
    return ret;
}
