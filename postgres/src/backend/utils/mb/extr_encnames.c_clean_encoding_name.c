
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;

__attribute__((used)) static char *
clean_encoding_name(const char *key, char *newkey)
{
 const char *p;
 char *np;

 for (p = key, np = newkey; *p != '\0'; p++)
 {
  if (isalnum((unsigned char) *p))
  {
   if (*p >= 'A' && *p <= 'Z')
    *np++ = *p + 'a' - 'A';
   else
    *np++ = *p;
  }
 }
 *np = '\0';
 return newkey;
}
