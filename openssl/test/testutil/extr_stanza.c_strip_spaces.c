
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int strlen (char*) ;

__attribute__((used)) static char *strip_spaces(char *p)
{
    char *q;


    while (*p && isspace((unsigned char)*p))
        p++;
    if (*p == '\0')
        return ((void*)0);

    for (q = p + strlen(p) - 1; q != p && isspace((unsigned char)*q); )
        *q-- = '\0';
    return *p ? p : ((void*)0);
}
