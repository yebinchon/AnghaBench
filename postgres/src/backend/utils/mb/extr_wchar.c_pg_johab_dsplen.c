
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_euc_dsplen (unsigned char const*) ;

__attribute__((used)) static int
pg_johab_dsplen(const unsigned char *s)
{
 return pg_euc_dsplen(s);
}
