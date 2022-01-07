
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int text ;
typedef int regex_t ;
typedef int pg_wchar ;
typedef int errMsg ;
struct TYPE_5__ {int cre_pat_len; int cre_flags; scalar_t__ cre_collation; int cre_re; int * cre_pat; } ;
typedef TYPE_1__ cached_re_str ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int MAX_CACHED_RES ;
 int Max (int,int) ;
 int REG_OKAY ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int free (int *) ;
 int * malloc (int ) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (int *,char*,int) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 int num_res ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int pg_mb2wchar_with_len (char*,int *,int) ;
 int pg_regcomp (int *,int *,int,int,scalar_t__) ;
 int pg_regerror (int,int *,char*,int) ;
 int pg_regfree (int *) ;
 TYPE_1__* re_array ;

regex_t *
RE_compile_and_cache(text *text_re, int cflags, Oid collation)
{
 int text_re_len = VARSIZE_ANY_EXHDR(text_re);
 char *text_re_val = VARDATA_ANY(text_re);
 pg_wchar *pattern;
 int pattern_len;
 int i;
 int regcomp_result;
 cached_re_str re_temp;
 char errMsg[100];






 for (i = 0; i < num_res; i++)
 {
  if (re_array[i].cre_pat_len == text_re_len &&
   re_array[i].cre_flags == cflags &&
   re_array[i].cre_collation == collation &&
   memcmp(re_array[i].cre_pat, text_re_val, text_re_len) == 0)
  {



   if (i > 0)
   {
    re_temp = re_array[i];
    memmove(&re_array[1], &re_array[0], i * sizeof(cached_re_str));
    re_array[0] = re_temp;
   }

   return &re_array[0].cre_re;
  }
 }







 pattern = (pg_wchar *) palloc((text_re_len + 1) * sizeof(pg_wchar));
 pattern_len = pg_mb2wchar_with_len(text_re_val,
            pattern,
            text_re_len);

 regcomp_result = pg_regcomp(&re_temp.cre_re,
        pattern,
        pattern_len,
        cflags,
        collation);

 pfree(pattern);

 if (regcomp_result != REG_OKAY)
 {
  CHECK_FOR_INTERRUPTS();

  pg_regerror(regcomp_result, &re_temp.cre_re, errMsg, sizeof(errMsg));
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
     errmsg("invalid regular expression: %s", errMsg)));
 }







 re_temp.cre_pat = malloc(Max(text_re_len, 1));
 if (re_temp.cre_pat == ((void*)0))
 {
  pg_regfree(&re_temp.cre_re);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
 }
 memcpy(re_temp.cre_pat, text_re_val, text_re_len);
 re_temp.cre_pat_len = text_re_len;
 re_temp.cre_flags = cflags;
 re_temp.cre_collation = collation;





 if (num_res >= MAX_CACHED_RES)
 {
  --num_res;
  Assert(num_res < MAX_CACHED_RES);
  pg_regfree(&re_array[num_res].cre_re);
  free(re_array[num_res].cre_pat);
 }

 if (num_res > 0)
  memmove(&re_array[1], &re_array[0], num_res * sizeof(cached_re_str));

 re_array[0] = re_temp;
 num_res++;

 return &re_array[0].cre_re;
}
