
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char pg_ascii_tolower (unsigned char) ;
 char pg_ascii_toupper (unsigned char) ;
 char* pnstrdup (char const*,size_t) ;

char *
asc_initcap(const char *buff, size_t nbytes)
{
 char *result;
 char *p;
 int wasalnum = 0;

 if (!buff)
  return ((void*)0);

 result = pnstrdup(buff, nbytes);

 for (p = result; *p; p++)
 {
  char c;

  if (wasalnum)
   *p = c = pg_ascii_tolower((unsigned char) *p);
  else
   *p = c = pg_ascii_toupper((unsigned char) *p);

  wasalnum = ((c >= 'A' && c <= 'Z') ||
     (c >= 'a' && c <= 'z') ||
     (c >= '0' && c <= '9'));
 }

 return result;
}
