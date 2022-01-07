
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strichr(char *p, int c)
{
    char *t;

    if (p != ((void*)0)) {
        for(t = p; *t; t++);
        for (; t >= p; t--) {
            *(t + 1) = *t;
        }
        *p = c;
    }
    return (p);
}
