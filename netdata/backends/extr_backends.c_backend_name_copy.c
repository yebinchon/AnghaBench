
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;

size_t backend_name_copy(char *d, const char *s, size_t usable) {
    size_t n;

    for(n = 0; *s && n < usable ; d++, s++, n++) {
        char c = *s;

        if(c != '.' && !isalnum(c)) *d = '_';
        else *d = c;
    }
    *d = '\0';

    return n;
}
