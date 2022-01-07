
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static char *next_valid_constant_name(char **string)
{
    char *ret = *string;
    char *next;

    while (*ret && !isalpha(*ret) && *ret != '_')
        ++ret;
    if (!*ret)
        return ((void*)0);

    next = ret + 1;
    while (isalpha(*next) || isdigit(*next) || *next == '_')
        ++next;
    if (*next)
        *next++ = 0;
    *string = next;
    return ret;
}
