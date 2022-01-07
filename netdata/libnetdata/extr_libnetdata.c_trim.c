
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ isspace (char) ;
 scalar_t__ strlen (char*) ;

char *trim(char *s) {

    while (*s && isspace(*s)) s++;
    if (!*s) return ((void*)0);



    ssize_t l = strlen(s);
    if (--l >= 0) {
        char *p = s + l;
        while (p > s && isspace(*p)) p--;
        *++p = '\0';
    }

    if (!*s) return ((void*)0);

    return s;
}
