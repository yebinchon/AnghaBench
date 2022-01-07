
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *to_unix_path(char *p) {
    if (p != ((void*)0)) {
        char *pp = p;
        while (*pp != 0) {
            if (*pp == '\\')
                *pp = '/';
            ++pp;
        }
    }
    return p;
}
