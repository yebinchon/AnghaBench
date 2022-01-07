
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_char_t ;



size_t utf8_char_length(const utf8_char_t* c)
{

    if (!c || 0x00 == c[0]) {
        return 0;
    }

    static const size_t _utf8_char_length[] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 3, 3, 4, 0
    };

    return _utf8_char_length[(c[0] >> 3) & 0x1F];
}
