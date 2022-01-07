
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _strncasecmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char tolower (unsigned char) ;

char *
strcasestr(const char *s, const char *find)
{
 char c, sc;
 size_t len;

 if ((c = *find++) != 0) {
  c = tolower((unsigned char)c);
  len = strlen(find);
  do {
   do {
    if ((sc = *s++) == 0)
     return (((void*)0));
   } while ((char)tolower((unsigned char)sc) != c);
  } while (_strncasecmp(s, find, len) != 0);
  s--;
 }
 return (char *)(intptr_t)(s);
}
