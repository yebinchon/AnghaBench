
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t utf8_size_t ;
typedef scalar_t__ utf8_char_t ;


 size_t utf8_char_length (scalar_t__ const*) ;
 int utf8_char_whitespace (scalar_t__ const*) ;

size_t utf8_trimmed_length(const utf8_char_t* data, utf8_size_t charcters)
{
    size_t l, t = 0, split_at = 0;
    for (size_t c = 0; (*data) && c < charcters; ++c) {
        l = utf8_char_length(data);
        t += l, data += l;
        if (!utf8_char_whitespace(data)) {
            split_at = t;
        }
    }

    return split_at;
}
