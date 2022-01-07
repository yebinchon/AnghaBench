
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

char *mystrsep(char **ptr, char *s) {
    char *p = "";
    while (p && !p[0] && *ptr) p = strsep(ptr, s);
    return (p);
}
