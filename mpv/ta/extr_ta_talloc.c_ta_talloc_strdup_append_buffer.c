
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_xstrdup_append_buffer (char**,char const*) ;

char *ta_talloc_strdup_append_buffer(char *s, const char *a)
{
    ta_xstrdup_append_buffer(&s, a);
    return s;
}
