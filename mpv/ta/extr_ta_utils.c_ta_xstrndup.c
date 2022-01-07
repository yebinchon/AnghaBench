
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_oom_b (int ) ;
 char* ta_strndup (void*,char const*,size_t) ;

char *ta_xstrndup(void *ta_parent, const char *str, size_t n)
{
    char *res = ta_strndup(ta_parent, str, n);
    ta_oom_b(res || !str);
    return res;
}
