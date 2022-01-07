
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 char* trim (char*,int *,int ) ;

__attribute__((used)) static char *next_part(char **str, BOOL strip_quotes)
{
    char *start = *str;
    char *next = *str;

    while (*next && *next != ',')
        next++;

    if (!*next)
    {
        *str = trim(start, ((void*)0), strip_quotes);
        return ((void*)0);
    }

    *next = 0;
    *str = trim(start, ((void*)0), strip_quotes);
    return ++next;
}
