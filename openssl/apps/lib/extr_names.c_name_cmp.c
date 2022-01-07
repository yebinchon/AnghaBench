
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const* const,char const* const) ;

int name_cmp(const char * const *a, const char * const *b)
{
    return strcasecmp(*a, *b);
}
