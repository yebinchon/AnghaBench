
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 unsigned char const SS2 ;
 unsigned char const SS3 ;
 int pg_ascii_dsplen (unsigned char const*) ;

__attribute__((used)) static int
pg_euctw_dsplen(const unsigned char *s)
{
 int len;

 if (*s == SS2)
  len = 2;
 else if (*s == SS3)
  len = 2;
 else if (IS_HIGHBIT_SET(*s))
  len = 2;
 else
  len = pg_ascii_dsplen(s);
 return len;
}
