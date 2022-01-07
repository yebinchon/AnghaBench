
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetDatabaseEncoding () ;
 scalar_t__ pg_verify_mbstr_len (int ,char const*,int,int) ;

bool
pg_verifymbstr(const char *mbstr, int len, bool noError)
{
 return
  pg_verify_mbstr_len(GetDatabaseEncoding(), mbstr, len, noError) >= 0;
}
