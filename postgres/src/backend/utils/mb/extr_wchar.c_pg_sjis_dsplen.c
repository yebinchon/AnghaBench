
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 int pg_ascii_dsplen (unsigned char const*) ;

__attribute__((used)) static int
pg_sjis_dsplen(const unsigned char *s)
{
 int len;

 if (*s >= 0xa1 && *s <= 0xdf)
  len = 1;
 else if (IS_HIGHBIT_SET(*s))
  len = 2;
 else
  len = pg_ascii_dsplen(s);
 return len;
}
