
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char const) ;

size_t strspn(const char *s, const char *accept) {
    const char *ss = s;
    while (*s && strchr(accept, *s) != ((void*)0)) {
        ++s;
    }
    return s - ss;
}
