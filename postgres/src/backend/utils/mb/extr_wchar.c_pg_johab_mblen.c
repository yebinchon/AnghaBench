
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_euc_mblen (unsigned char const*) ;

__attribute__((used)) static int
pg_johab_mblen(const unsigned char *s)
{
 return pg_euc_mblen(s);
}
