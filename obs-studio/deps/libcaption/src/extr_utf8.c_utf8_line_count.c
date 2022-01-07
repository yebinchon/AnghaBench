
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_char_t ;


 size_t utf8_line_length (int const*) ;

int utf8_line_count(const utf8_char_t* data)
{
    size_t len = 0;
    int count = 0;

    do {
        len = utf8_line_length(data);
        data += len;
        ++count;
    } while (0 < len);

    return count - 1;
}
