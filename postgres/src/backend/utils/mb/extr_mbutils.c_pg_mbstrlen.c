
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;
 int strlen (char const*) ;

int
pg_mbstrlen(const char *mbstr)
{
 int len = 0;


 if (pg_database_encoding_max_length() == 1)
  return strlen(mbstr);

 while (*mbstr)
 {
  mbstr += pg_mblen(mbstr);
  len++;
 }
 return len;
}
