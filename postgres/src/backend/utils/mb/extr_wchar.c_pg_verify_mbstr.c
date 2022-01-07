
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_verify_mbstr_len (int,char const*,int,int) ;

bool
pg_verify_mbstr(int encoding, const char *mbstr, int len, bool noError)
{
 return pg_verify_mbstr_len(encoding, mbstr, len, noError) >= 0;
}
