
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_size_t ;
typedef int utf8_char_t ;


 scalar_t__ utf8_char_count (int const*,int ) ;
 size_t utf8_char_length (int const*) ;

size_t utf8_string_length(const utf8_char_t* data, utf8_size_t size)
{
    size_t char_length, byts = 0;

    if (0 == size) {
        size = utf8_char_count(data, 0);
    }

    for (; 0 < size; --size) {
        if (0 == (char_length = utf8_char_length(data))) {
            break;
        }

        data += char_length;
        byts += char_length;
    }

    return byts;
}
