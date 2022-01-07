
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef enum warn { ____Placeholder_warn } warn ;


 int IN_NONE ;
 char* _fmt (char const*,struct pg_tm const*,char*,char*,int*) ;

size_t
pg_strftime(char *s, size_t maxsize, const char *format, const struct pg_tm *t)
{
 char *p;
 enum warn warn = IN_NONE;

 p = _fmt(format, t, s, s + maxsize, &warn);
 if (p == s + maxsize)
  return 0;
 *p = '\0';
 return p - s;
}
