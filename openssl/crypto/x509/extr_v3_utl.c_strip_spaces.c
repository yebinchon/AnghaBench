
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ossl_isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *strip_spaces(char *name)
{
    char *p, *q;

    p = name;
    while (*p && ossl_isspace(*p))
        p++;
    if (*p == '\0')
        return ((void*)0);
    q = p + strlen(p) - 1;
    while ((q != p) && ossl_isspace(*q))
        q--;
    if (p != q)
        q[1] = 0;
    if (*p == '\0')
        return ((void*)0);
    return p;
}
