
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regmatch_t ;
typedef int regex_t ;
typedef int pg_wchar ;


 int RE_wchar_execute (int *,int *,int,int ,int,int *) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int pg_mb2wchar_with_len (char*,int *,int) ;

__attribute__((used)) static bool
RE_execute(regex_t *re, char *dat, int dat_len,
     int nmatch, regmatch_t *pmatch)
{
 pg_wchar *data;
 int data_len;
 bool match;


 data = (pg_wchar *) palloc((dat_len + 1) * sizeof(pg_wchar));
 data_len = pg_mb2wchar_with_len(dat, data, dat_len);


 match = RE_wchar_execute(re, data, data_len, 0, nmatch, pmatch);

 pfree(data);
 return match;
}
