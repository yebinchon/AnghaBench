
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char utf8_char_t ;


 int memcpy (char*,char const*,size_t) ;
 size_t utf8_char_length (char const*) ;

size_t utf8_char_copy(utf8_char_t* dst, const utf8_char_t* src)
{
    size_t bytes = utf8_char_length(src);

    if (bytes && dst) {
        memcpy(dst, src, bytes);
        dst[bytes] = '\0';
    }

    return bytes;
}
