
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 unsigned char const SS2 ;
 unsigned char const SS3 ;

__attribute__((used)) static inline int
pg_euc_mblen(const unsigned char *s)
{
 int len;

 if (*s == SS2)
  len = 2;
 else if (*s == SS3)
  len = 3;
 else if (IS_HIGHBIT_SET(*s))
  len = 2;
 else
  len = 1;
 return len;
}
