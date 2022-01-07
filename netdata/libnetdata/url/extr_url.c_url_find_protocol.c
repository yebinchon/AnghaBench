
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char*,char*,int) ;

inline char *url_find_protocol(char *s) {
    while(*s) {

        while (*s && *s != ' ') s++;


        if(*s && !strncmp(s, " HTTP/", 6)) break;
        else s++;
    }

    return s;
}
