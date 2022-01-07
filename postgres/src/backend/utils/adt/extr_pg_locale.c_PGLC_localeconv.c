
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int worklconv ;
struct lconv {void* negative_sign; void* positive_sign; void* mon_thousands_sep; void* mon_decimal_point; void* currency_symbol; void* int_curr_symbol; void* thousands_sep; void* decimal_point; int n_sign_posn; int p_sign_posn; int n_sep_by_space; int n_cs_precedes; int p_sep_by_space; int p_cs_precedes; int frac_digits; int int_frac_digits; void* mon_grouping; void* grouping; } ;


 int CurrentLocaleConvValid ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FATAL ;
 int LC_CTYPE ;
 int LC_MONETARY ;
 int LC_NUMERIC ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_SQL_ASCII ;
 int PG_TRY () ;
 int db_encoding_convert (int,void**) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int free_struct_lconv (struct lconv*) ;
 char* locale_monetary ;
 char* locale_numeric ;
 struct lconv* localeconv () ;
 int memset (struct lconv*,int ,int) ;
 int pfree (char*) ;
 int pg_get_encoding_from_locale (char*,int) ;
 char* pstrdup (char*) ;
 char* setlocale (int ,char*) ;
 void* strdup (void*) ;
 int struct_lconv_is_valid (struct lconv*) ;

struct lconv *
PGLC_localeconv(void)
{
 static struct lconv CurrentLocaleConv;
 static bool CurrentLocaleConvAllocated = 0;
 struct lconv *extlconv;
 struct lconv worklconv;
 char *save_lc_monetary;
 char *save_lc_numeric;





 if (CurrentLocaleConvValid)
  return &CurrentLocaleConv;


 if (CurrentLocaleConvAllocated)
 {
  free_struct_lconv(&CurrentLocaleConv);
  CurrentLocaleConvAllocated = 0;
 }
 memset(&worklconv, 0, sizeof(worklconv));


 save_lc_monetary = setlocale(LC_MONETARY, ((void*)0));
 if (!save_lc_monetary)
  elog(ERROR, "setlocale(NULL) failed");
 save_lc_monetary = pstrdup(save_lc_monetary);

 save_lc_numeric = setlocale(LC_NUMERIC, ((void*)0));
 if (!save_lc_numeric)
  elog(ERROR, "setlocale(NULL) failed");
 save_lc_numeric = pstrdup(save_lc_numeric);
 setlocale(LC_NUMERIC, locale_numeric);
 extlconv = localeconv();


 worklconv.decimal_point = strdup(extlconv->decimal_point);
 worklconv.thousands_sep = strdup(extlconv->thousands_sep);
 worklconv.grouping = strdup(extlconv->grouping);







 setlocale(LC_MONETARY, locale_monetary);
 extlconv = localeconv();


 worklconv.int_curr_symbol = strdup(extlconv->int_curr_symbol);
 worklconv.currency_symbol = strdup(extlconv->currency_symbol);
 worklconv.mon_decimal_point = strdup(extlconv->mon_decimal_point);
 worklconv.mon_thousands_sep = strdup(extlconv->mon_thousands_sep);
 worklconv.mon_grouping = strdup(extlconv->mon_grouping);
 worklconv.positive_sign = strdup(extlconv->positive_sign);
 worklconv.negative_sign = strdup(extlconv->negative_sign);

 worklconv.int_frac_digits = extlconv->int_frac_digits;
 worklconv.frac_digits = extlconv->frac_digits;
 worklconv.p_cs_precedes = extlconv->p_cs_precedes;
 worklconv.p_sep_by_space = extlconv->p_sep_by_space;
 worklconv.n_cs_precedes = extlconv->n_cs_precedes;
 worklconv.n_sep_by_space = extlconv->n_sep_by_space;
 worklconv.p_sign_posn = extlconv->p_sign_posn;
 worklconv.n_sign_posn = extlconv->n_sign_posn;
 if (!setlocale(LC_MONETARY, save_lc_monetary))
  elog(FATAL, "failed to restore LC_MONETARY to \"%s\"", save_lc_monetary);
 if (!setlocale(LC_NUMERIC, save_lc_numeric))
  elog(FATAL, "failed to restore LC_NUMERIC to \"%s\"", save_lc_numeric);






 PG_TRY();
 {
  int encoding;


  pfree(save_lc_monetary);
  pfree(save_lc_numeric);





  if (!struct_lconv_is_valid(&worklconv))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
  encoding = pg_get_encoding_from_locale(locale_numeric, 1);
  if (encoding < 0)
   encoding = PG_SQL_ASCII;

  db_encoding_convert(encoding, &worklconv.decimal_point);
  db_encoding_convert(encoding, &worklconv.thousands_sep);


  encoding = pg_get_encoding_from_locale(locale_monetary, 1);
  if (encoding < 0)
   encoding = PG_SQL_ASCII;

  db_encoding_convert(encoding, &worklconv.int_curr_symbol);
  db_encoding_convert(encoding, &worklconv.currency_symbol);
  db_encoding_convert(encoding, &worklconv.mon_decimal_point);
  db_encoding_convert(encoding, &worklconv.mon_thousands_sep);

  db_encoding_convert(encoding, &worklconv.positive_sign);
  db_encoding_convert(encoding, &worklconv.negative_sign);
 }
 PG_CATCH();
 {
  free_struct_lconv(&worklconv);
  PG_RE_THROW();
 }
 PG_END_TRY();




 CurrentLocaleConv = worklconv;
 CurrentLocaleConvAllocated = 1;
 CurrentLocaleConvValid = 1;
 return &CurrentLocaleConv;
}
