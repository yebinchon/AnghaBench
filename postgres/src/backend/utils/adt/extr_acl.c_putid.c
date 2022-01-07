
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (unsigned char) ;

__attribute__((used)) static void
putid(char *p, const char *s)
{
 const char *src;
 bool safe = 1;

 for (src = s; *src; src++)
 {

  if (!isalnum((unsigned char) *src) && *src != '_')
  {
   safe = 0;
   break;
  }
 }
 if (!safe)
  *p++ = '"';
 for (src = s; *src; src++)
 {

  if (*src == '"')
   *p++ = '"';
  *p++ = *src;
 }
 if (!safe)
  *p++ = '"';
 *p = '\0';
}
