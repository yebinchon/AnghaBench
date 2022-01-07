
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int regex_t ;
typedef int pg_wchar ;
typedef int errMsg ;
typedef int Oid ;


 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int ERROR ;
 int REG_OKAY ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int pg_mb2wchar_with_len (char*,int *,int) ;
 int pg_regcomp (int *,int *,int,int,int ) ;
 int pg_regerror (int,int *,char*,int) ;

__attribute__((used)) static void
RE_compile(regex_t *regex, text *text_re, int cflags, Oid collation)
{
 int text_re_len = VARSIZE_ANY_EXHDR(text_re);
 char *text_re_val = VARDATA_ANY(text_re);
 pg_wchar *pattern;
 int pattern_len;
 int regcomp_result;
 char errMsg[100];


 pattern = (pg_wchar *) palloc((text_re_len + 1) * sizeof(pg_wchar));
 pattern_len = pg_mb2wchar_with_len(text_re_val,
            pattern,
            text_re_len);


 regcomp_result = pg_regcomp(regex,
        pattern,
        pattern_len,
        cflags,
        collation);

 pfree(pattern);

 if (regcomp_result != REG_OKAY)
 {

  pg_regerror(regcomp_result, regex, errMsg, sizeof(errMsg));
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
     errmsg("invalid regular expression: %s", errMsg)));
 }
}
