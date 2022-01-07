
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_ascii_dsplen (unsigned char const*) ;

__attribute__((used)) static int
pg_latin1_dsplen(const unsigned char *s)
{
 return pg_ascii_dsplen(s);
}
