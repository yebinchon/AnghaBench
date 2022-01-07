
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNLIKELY (int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
strsep_char(char *strp, const char *end, char delim)
{
    char *ptr;

    if (UNLIKELY(!strp))
        return ((void*)0);

    if (UNLIKELY(strp > end))
        return ((void*)0);

    ptr = strchr(strp, delim);
    if (UNLIKELY(!ptr))
        return ((void*)0);

    *ptr = '\0';
    return ptr + 1;
}
