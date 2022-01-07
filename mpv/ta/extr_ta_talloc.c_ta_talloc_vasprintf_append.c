
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int ta_xvasprintf_append (char**,char const*,int ) ;

char *ta_talloc_vasprintf_append(char *s, const char *fmt, va_list ap)
{
    ta_xvasprintf_append(&s, fmt, ap);
    return s;
}
