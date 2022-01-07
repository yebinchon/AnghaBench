
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_oom_b (int ) ;
 char* ta_strdup (void*,char const*) ;

char *ta_xstrdup(void *ta_parent, const char *str)
{
    char *res = ta_strdup(ta_parent, str);
    ta_oom_b(res || !str);
    return res;
}
