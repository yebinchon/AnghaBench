
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int pg_log_error (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
strip_lineno_from_objdesc(char *obj)
{
 char *c;
 int lineno;

 if (!obj || obj[0] == '\0')
  return -1;

 c = obj + strlen(obj) - 1;
 while (c > obj && isascii((unsigned char) *c) && isspace((unsigned char) *c))
  c--;


 if (c == obj || !isascii((unsigned char) *c) || !isdigit((unsigned char) *c))
  return -1;


 while (c > obj && isascii((unsigned char) *c) && isdigit((unsigned char) *c))
  c--;



 if (c == obj || !isascii((unsigned char) *c) ||
  !(isspace((unsigned char) *c) || *c == ')'))
  return -1;


 c++;
 lineno = atoi(c);
 if (lineno < 1)
 {
  pg_log_error("invalid line number: %s", c);
  return 0;
 }


 *c = '\0';

 return lineno;
}
