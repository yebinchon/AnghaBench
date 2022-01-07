
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int) ;

char *strdupz(const char *s) {
    char *t = strdup(s);
    if (unlikely(!t)) fatal("Cannot strdup() string '%s'", s);
    return t;
}
