
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iscntrl (char) ;

__attribute__((used)) static inline char *strip_control_characters(char *url) {
    char *s = url;
    if(!s) return "";

    if(iscntrl(*s)) *s = ' ';
    while(*++s) {
        if(iscntrl(*s)) *s = ' ';
    }

    return url;
}
