
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strchr(const char *s, int c)
{



    while (*s != '\0' && *s != (char)c)
        s++;
    return ((*s == c) ? (char *) s : 0);
}
