
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cliplen (char const*,int,int) ;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;

int
pg_mbcharcliplen(const char *mbstr, int len, int limit)
{
 int clen = 0;
 int nch = 0;
 int l;


 if (pg_database_encoding_max_length() == 1)
  return cliplen(mbstr, len, limit);

 while (len > 0 && *mbstr)
 {
  l = pg_mblen(mbstr);
  nch++;
  if (nch > limit)
   break;
  clen += l;
  len -= l;
  mbstr += l;
 }
 return clen;
}
