
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_encoding_mblen (int,char const*) ;

int
PQmblen(const char *s, int encoding)
{
 return pg_encoding_mblen(encoding, s);
}
