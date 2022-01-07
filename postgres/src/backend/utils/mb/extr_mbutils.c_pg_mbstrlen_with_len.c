
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;

int
pg_mbstrlen_with_len(const char *mbstr, int limit)
{
 int len = 0;


 if (pg_database_encoding_max_length() == 1)
  return limit;

 while (limit > 0 && *mbstr)
 {
  int l = pg_mblen(mbstr);

  limit -= l;
  mbstr += l;
  len++;
 }
 return len;
}
