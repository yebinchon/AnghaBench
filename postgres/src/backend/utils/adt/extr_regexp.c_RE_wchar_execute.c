
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regmatch_t ;
typedef int regex_t ;
typedef int pg_wchar ;
typedef int errMsg ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int ERROR ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int pg_regerror (int,int *,char*,int) ;
 int pg_regexec (int *,int *,int,int,int *,int,int *,int ) ;

__attribute__((used)) static bool
RE_wchar_execute(regex_t *re, pg_wchar *data, int data_len,
     int start_search, int nmatch, regmatch_t *pmatch)
{
 int regexec_result;
 char errMsg[100];


 regexec_result = pg_regexec(re,
        data,
        data_len,
        start_search,
        ((void*)0),
        nmatch,
        pmatch,
        0);

 if (regexec_result != REG_OKAY && regexec_result != REG_NOMATCH)
 {

  CHECK_FOR_INTERRUPTS();
  pg_regerror(regexec_result, re, errMsg, sizeof(errMsg));
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
     errmsg("regular expression failed: %s", errMsg)));
 }

 return (regexec_result == REG_OKAY);
}
