
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;

__attribute__((used)) static int
charlen_to_bytelen(const char *p, int n)
{
 if (pg_database_encoding_max_length() == 1)
 {

  return n;
 }
 else
 {
  const char *s;

  for (s = p; n > 0; n--)
   s += pg_mblen(s);

  return s - p;
 }
}
