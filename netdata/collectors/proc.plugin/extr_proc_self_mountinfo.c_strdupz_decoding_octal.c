
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 scalar_t__ likely (int) ;
 char* strdupz (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static char *strdupz_decoding_octal(const char *string) {
    char *buffer = strdupz(string);

    char *d = buffer;
    const char *s = string;

    while(*s) {
        if(unlikely(*s == '\\')) {
            s++;
            if(likely(isdigit(*s) && isdigit(s[1]) && isdigit(s[2]))) {
                char c = *s++ - '0';
                c <<= 3;
                c |= *s++ - '0';
                c <<= 3;
                c |= *s++ - '0';
                *d++ = c;
            }
            else *d++ = '_';
        }
        else *d++ = *s++;
    }
    *d = '\0';

    return buffer;
}
