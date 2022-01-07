
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char pg_ascii_tolower (unsigned char) ;
 char* pnstrdup (char const*,size_t) ;

char *
asc_tolower(const char *buff, size_t nbytes)
{
 char *result;
 char *p;

 if (!buff)
  return ((void*)0);

 result = pnstrdup(buff, nbytes);

 for (p = result; *p; p++)
  *p = pg_ascii_tolower((unsigned char) *p);

 return result;
}
