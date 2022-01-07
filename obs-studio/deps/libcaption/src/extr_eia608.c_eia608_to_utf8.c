
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ eia608_to_index (int ,int*,int*,int*) ;
 int utf8_char_copy (char*,int ) ;
 int utf8_from_index (int) ;

int eia608_to_utf8(uint16_t c, int* chan, char* str1, char* str2)
{
    int c1, c2;
    int size = (int)eia608_to_index(c, chan, &c1, &c2);
    utf8_char_copy(str1, utf8_from_index(c1));
    utf8_char_copy(str2, utf8_from_index(c2));
    return size;
}
