
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_size_t ;


 size_t strlen (char const*) ;
 size_t utf8_char_length (char const*) ;

utf8_size_t utf8_char_count(const char* data, size_t size)
{
    size_t i, bytes = 0;
    utf8_size_t count = 0;

    if (0 == size) {
        size = strlen(data);
    }

    for (i = 0; i < size; ++count, i += bytes) {
        if (0 == (bytes = utf8_char_length(&data[i]))) {
            break;
        }
    }

    return count;
}
