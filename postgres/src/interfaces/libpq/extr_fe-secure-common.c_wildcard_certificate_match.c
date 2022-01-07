
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_strcasecmp (char const*,char const*) ;
 char const* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
wildcard_certificate_match(const char *pattern, const char *string)
{
 int lenpat = strlen(pattern);
 int lenstr = strlen(string);


 if (lenpat < 3 ||
  pattern[0] != '*' ||
  pattern[1] != '.')
  return 0;


 if (lenpat > lenstr)
  return 0;




 if (pg_strcasecmp(pattern + 1, string + lenstr - lenpat + 1) != 0)
  return 0;





 if (strchr(string, '.') < string + lenstr - lenpat)
  return 0;


 return 1;
}
