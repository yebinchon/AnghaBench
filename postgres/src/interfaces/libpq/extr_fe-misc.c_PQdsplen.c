
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_encoding_dsplen (int,char const*) ;

int
PQdsplen(const char *s, int encoding)
{
 return pg_encoding_dsplen(encoding, s);
}
