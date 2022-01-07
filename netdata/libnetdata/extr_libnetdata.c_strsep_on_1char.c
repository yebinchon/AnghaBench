
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlikely (int) ;

char *strsep_on_1char(char **ptr, char c) {
    if(unlikely(!ptr || !*ptr))
        return ((void*)0);


    char *s = *ptr;


    while(*s == c) s++;
    char *ret = s;


    while(*s++) {
        if(unlikely(*s == c)) {
            *s++ = '\0';
            *ptr = s;
            return ret;
        }
    }

    *ptr = ((void*)0);
    return ret;
}
