
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

inline char *trim_all(char *buffer) {
    char *d = buffer, *s = buffer;


    while(isspace(*s)) s++;

    while(*s) {

        while(*s && !isspace(*s)) *d++ = *s++;


        if(*s && isspace(*s)) {
            *d++ = ' ';
            s++;
        }


        while(isspace(*s)) s++;
    }

    *d = '\0';

    if(d > buffer) {
        d--;
        if(isspace(*d)) *d = '\0';
    }

    if(!buffer[0]) return ((void*)0);
    return buffer;
}
