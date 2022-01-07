
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_strdup (char const*) ;

__attribute__((used)) static char *
sanitize_line(const char *str, bool want_hyphen)
{
 char *result;
 char *s;

 if (!str)
  return pg_strdup(want_hyphen ? "-" : "");

 result = pg_strdup(str);

 for (s = result; *s != '\0'; s++)
 {
  if (*s == '\n' || *s == '\r')
   *s = ' ';
 }

 return result;
}
