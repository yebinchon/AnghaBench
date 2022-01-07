
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *
parse_comma_separated_list(char **startptr, bool *more)
{
 char *p;
 char *s = *startptr;
 char *e;
 int len;





 e = s;
 while (*e != '\0' && *e != ',')
  ++e;
 *more = (*e == ',');

 len = e - s;
 p = (char *) malloc(sizeof(char) * (len + 1));
 if (p)
 {
  memcpy(p, s, len);
  p[len] = '\0';
 }
 *startptr = e + 1;

 return p;
}
