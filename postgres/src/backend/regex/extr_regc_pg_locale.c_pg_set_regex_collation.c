
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ provider; int deterministic; } ;
typedef scalar_t__ Oid ;


 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ C_COLLATION_OID ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INDETERMINATE_COLLATION ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PG_REGEX_LOCALE_1BYTE ;
 int PG_REGEX_LOCALE_1BYTE_L ;
 int PG_REGEX_LOCALE_C ;
 int PG_REGEX_LOCALE_ICU ;
 int PG_REGEX_LOCALE_WIDE ;
 int PG_REGEX_LOCALE_WIDE_L ;
 scalar_t__ PG_UTF8 ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ lc_ctype_is_c (scalar_t__) ;
 TYPE_1__* pg_newlocale_from_collation (scalar_t__) ;
 scalar_t__ pg_regex_collation ;
 TYPE_1__* pg_regex_locale ;
 int pg_regex_strategy ;

void
pg_set_regex_collation(Oid collation)
{
 if (lc_ctype_is_c(collation))
 {

  pg_regex_strategy = PG_REGEX_LOCALE_C;
  pg_regex_locale = 0;
  pg_regex_collation = C_COLLATION_OID;
 }
 else
 {
  if (collation == DEFAULT_COLLATION_OID)
   pg_regex_locale = 0;
  else if (OidIsValid(collation))
  {





   pg_regex_locale = pg_newlocale_from_collation(collation);
  }
  else
  {




   ereport(ERROR,
     (errcode(ERRCODE_INDETERMINATE_COLLATION),
      errmsg("could not determine which collation to use for regular expression"),
      errhint("Use the COLLATE clause to set the collation explicitly.")));
  }

  if (pg_regex_locale && !pg_regex_locale->deterministic)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("nondeterministic collations are not supported for regular expressions")));






  if (GetDatabaseEncoding() == PG_UTF8)
  {
   if (pg_regex_locale)
    pg_regex_strategy = PG_REGEX_LOCALE_WIDE_L;
   else
    pg_regex_strategy = PG_REGEX_LOCALE_WIDE;
  }
  else
  {
   if (pg_regex_locale)
    pg_regex_strategy = PG_REGEX_LOCALE_1BYTE_L;
   else
    pg_regex_strategy = PG_REGEX_LOCALE_1BYTE;
  }

  pg_regex_collation = collation;
 }
}
