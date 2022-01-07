
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_char_t ;


 size_t _utf8_newline (scalar_t__ const*) ;

size_t utf8_line_length(const utf8_char_t* data)
{
    size_t n, len = 0;

    for (len = 0; 0 != data[len]; ++len) {
        if (0 < (n = _utf8_newline(data))) {
            return len + n;
        }
    }

    return len;
}
