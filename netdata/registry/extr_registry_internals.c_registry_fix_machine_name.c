
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 scalar_t__ likely (size_t*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static inline char *registry_fix_machine_name(char *name, size_t *len) {
    char *s = name?name:"";


    while(*s && isspace(*s)) s++;


    char *t = s;
    while(*t) {
        if(unlikely(isspace(*t)))
            *t = ' ';

        t++;
    }


    while(--t >= s) {
        if(*t == ' ')
            *t = '\0';
        else
            break;
    }
    t++;

    if(likely(len))
        *len = (t - s);

    return s;
}
