
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int ta_free (char*) ;
 int ta_set_parent (char*,void*) ;
 int ta_vasprintf_append_at (char**,int ,char const*,int ) ;

char *ta_vasprintf(void *ta_parent, const char *fmt, va_list ap)
{
    char *res = ((void*)0);
    ta_vasprintf_append_at(&res, 0, fmt, ap);
    if (!res || !ta_set_parent(res, ta_parent)) {
        ta_free(res);
        return ((void*)0);
    }
    return res;
}
