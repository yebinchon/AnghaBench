
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int regmatch_t ;
typedef int regex_t ;
typedef int Oid ;


 int * RE_compile_and_cache (int *,int,int ) ;
 int RE_execute (int *,char*,int,int,int *) ;

bool
RE_compile_and_execute(text *text_re, char *dat, int dat_len,
        int cflags, Oid collation,
        int nmatch, regmatch_t *pmatch)
{
 regex_t *re;


 re = RE_compile_and_cache(text_re, cflags, collation);

 return RE_execute(re, dat, dat_len, nmatch, pmatch);
}
