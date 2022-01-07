
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_xstrndup_append (char**,char const*,size_t) ;

char *ta_talloc_strndup_append(char *s, const char *a, size_t n)
{
    ta_xstrndup_append(&s, a, n);
    return s;
}
