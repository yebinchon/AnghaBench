
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int regex_t ;
typedef int pg_wchar ;
typedef int errMsg ;
typedef int Oid ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int ERROR ;
 int REG_ADVANCED ;

 int REG_ICASE ;


 int * RE_compile_and_cache (int *,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int free (int *) ;
 scalar_t__ palloc (size_t) ;
 size_t pg_database_encoding_max_length () ;
 int pg_regerror (int,int *,char*,int) ;
 int pg_regprefix (int *,int **,size_t*) ;
 size_t pg_wchar2mb_with_len (int *,char*,size_t) ;

char *
regexp_fixed_prefix(text *text_re, bool case_insensitive, Oid collation,
     bool *exact)
{
 char *result;
 regex_t *re;
 int cflags;
 int re_result;
 pg_wchar *str;
 size_t slen;
 size_t maxlen;
 char errMsg[100];

 *exact = 0;


 cflags = REG_ADVANCED;
 if (case_insensitive)
  cflags |= REG_ICASE;

 re = RE_compile_and_cache(text_re, cflags, collation);


 re_result = pg_regprefix(re, &str, &slen);

 switch (re_result)
 {
  case 129:
   return ((void*)0);

  case 128:

   break;

  case 130:
   *exact = 1;

   break;

  default:

   CHECK_FOR_INTERRUPTS();
   pg_regerror(re_result, re, errMsg, sizeof(errMsg));
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
      errmsg("regular expression failed: %s", errMsg)));
   break;
 }


 maxlen = pg_database_encoding_max_length() * slen + 1;
 result = (char *) palloc(maxlen);
 slen = pg_wchar2mb_with_len(str, result, slen);
 Assert(slen < maxlen);

 free(str);

 return result;
}
