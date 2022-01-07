
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_malloc (int) ;
 int strlen (char const*) ;

char *
quote_identifier(const char *s)
{
 char *result = pg_malloc(strlen(s) * 2 + 3);
 char *r = result;

 *r++ = '"';
 while (*s)
 {
  if (*s == '"')
   *r++ = *s;
  *r++ = *s;
  s++;
 }
 *r++ = '"';
 *r++ = '\0';

 return result;
}
