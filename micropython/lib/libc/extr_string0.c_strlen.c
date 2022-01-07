
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strlen(const char *str) {
    int len = 0;
    for (const char *s = str; *s; s++) {
        len += 1;
    }
    return len;
}
