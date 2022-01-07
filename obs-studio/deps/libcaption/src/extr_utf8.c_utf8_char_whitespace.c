
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char utf8_char_t ;



int utf8_char_whitespace(const utf8_char_t* c)
{

    if (!c || (c[0] >= 0 && c[0] <= ' ') || c[0] == 0x7F) {
        return 1;
    }


    if (0xC2 == (unsigned char)c[0] && 0xA0 == (unsigned char)c[1]) {
        return 1;
    }

    return 0;
}
