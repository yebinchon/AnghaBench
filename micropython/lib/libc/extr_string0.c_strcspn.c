
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char const) ;

size_t strcspn(const char *s, const char *reject) {
    const char *ss = s;
    while (*s && strchr(reject, *s) == ((void*)0)) {
        ++s;
    }
    return s - ss;
}
