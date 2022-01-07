
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_UTF8_BYTE (char) ;
 scalar_t__ IS_UTF8_STARTBYTE (char) ;
 scalar_t__ unlikely (int) ;
 char url_percent_escape_decode (char*) ;
 char url_utf8_get_byte_length (char) ;

char url_decode_multibyte_utf8(char *s, char *d, char *d_end) {
    char first_byte = url_percent_escape_decode(s);

    if(unlikely(!first_byte || !IS_UTF8_STARTBYTE(first_byte)))
        return 0;

    char byte_length = url_utf8_get_byte_length(first_byte);

    if(unlikely(byte_length <= 0 || d+byte_length >= d_end))
        return 0;

    char to_read = byte_length;
    while(to_read > 0) {
        char c = url_percent_escape_decode(s);

        if(unlikely( !IS_UTF8_BYTE(c) ))
            return 0;
        if((to_read != byte_length) && IS_UTF8_STARTBYTE(c))
            return 0;

        *d++ = c;
        s+=3;
        to_read--;
    }

    return byte_length;
}
