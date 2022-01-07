
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
getword(char *p, char **res_p, int *res_len)
{

 while (*p && (*p == ' ' || *p == '\t' || *p == '\n'))
  p++;


 *res_p = p;
 if (*p == '=' || *p == ',')
  p++;
 else
  while (*p && !(*p == ' ' || *p == '\t' || *p == '\n'
        || *p == '=' || *p == ','))
   p++;


 *res_len = p - *res_p;


 while (*p && (*p == ' ' || *p == '\t' || *p == '\n'))
  p++;

 return p;
}
