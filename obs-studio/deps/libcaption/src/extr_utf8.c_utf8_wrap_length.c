
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t utf8_size_t ;
typedef int utf8_char_t ;


 scalar_t__ _utf8_newline (int const*) ;
 size_t utf8_char_length (int const*) ;
 scalar_t__ utf8_char_whitespace (int const*) ;

utf8_size_t utf8_wrap_length(const utf8_char_t* data, utf8_size_t size)
{

    size_t char_length, char_count, split_at = size;

    for (char_count = 0; char_count <= size; ++char_count) {
        if (_utf8_newline(data)) {
            return char_count;
        } else if (utf8_char_whitespace(data)) {
            split_at = char_count;
        }

        char_length = utf8_char_length(data);
        data += char_length;
    }

    return split_at;
}
