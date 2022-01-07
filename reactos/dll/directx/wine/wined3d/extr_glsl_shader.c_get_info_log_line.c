
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static const char *get_info_log_line(const char **ptr)
{
    const char *p, *q;

    p = *ptr;
    if (!(q = strstr(p, "\n")))
    {
        if (!*p) return ((void*)0);
        *ptr += strlen(p);
        return p;
    }
    *ptr = q + 1;

    return p;
}
