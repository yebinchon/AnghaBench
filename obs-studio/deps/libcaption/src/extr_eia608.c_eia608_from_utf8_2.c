
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_char_t ;
typedef int uint16_t ;


 int _eia608_from_utf8 (int const*) ;
 int eia608_from_basicna (int ,int ) ;

uint16_t eia608_from_utf8_2(const utf8_char_t* c1, const utf8_char_t* c2)
{
    uint16_t cc1 = _eia608_from_utf8(c1);
    uint16_t cc2 = _eia608_from_utf8(c2);
    return eia608_from_basicna(cc1, cc2);
}
