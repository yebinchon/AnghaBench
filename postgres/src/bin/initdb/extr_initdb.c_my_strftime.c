
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 size_t strftime (char*,size_t,char const*,struct tm const*) ;

__attribute__((used)) static inline size_t
my_strftime(char *s, size_t max, const char *fmt, const struct tm *tm)
{
 return strftime(s, max, fmt, tm);
}
