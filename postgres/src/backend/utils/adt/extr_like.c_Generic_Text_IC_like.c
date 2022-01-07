
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text ;
typedef TYPE_1__* pg_locale_t ;
struct TYPE_4__ {scalar_t__ provider; int deterministic; } ;
typedef scalar_t__ Oid ;


 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int * DatumGetTextPP (int ) ;
 int DirectFunctionCall1Coll (int ,scalar_t__,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INDETERMINATE_COLLATION ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 int MB_MatchText (char*,int,char*,int,int ,int) ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ PG_UTF8 ;
 int PointerGetDatum (int *) ;
 int SB_IMatchText (char*,int,char*,int,TYPE_1__*,int) ;
 int UTF8_MatchText (char*,int,char*,int,int ,int) ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ lc_ctype_is_c (scalar_t__) ;
 int lower ;
 int pg_database_encoding_max_length () ;
 TYPE_1__* pg_newlocale_from_collation (scalar_t__) ;

__attribute__((used)) static inline int
Generic_Text_IC_like(text *str, text *pat, Oid collation)
{
 char *s,
      *p;
 int slen,
    plen;
 pg_locale_t locale = 0;
 bool locale_is_c = 0;

 if (lc_ctype_is_c(collation))
  locale_is_c = 1;
 else if (collation != DEFAULT_COLLATION_OID)
 {
  if (!OidIsValid(collation))
  {




   ereport(ERROR,
     (errcode(ERRCODE_INDETERMINATE_COLLATION),
      errmsg("could not determine which collation to use for ILIKE"),
      errhint("Use the COLLATE clause to set the collation explicitly.")));
  }
  locale = pg_newlocale_from_collation(collation);

  if (locale && !locale->deterministic)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("nondeterministic collations are not supported for ILIKE")));
 }
 if (pg_database_encoding_max_length() > 1 || (locale && locale->provider == COLLPROVIDER_ICU))
 {
  pat = DatumGetTextPP(DirectFunctionCall1Coll(lower, collation,
              PointerGetDatum(pat)));
  p = VARDATA_ANY(pat);
  plen = VARSIZE_ANY_EXHDR(pat);
  str = DatumGetTextPP(DirectFunctionCall1Coll(lower, collation,
              PointerGetDatum(str)));
  s = VARDATA_ANY(str);
  slen = VARSIZE_ANY_EXHDR(str);
  if (GetDatabaseEncoding() == PG_UTF8)
   return UTF8_MatchText(s, slen, p, plen, 0, 1);
  else
   return MB_MatchText(s, slen, p, plen, 0, 1);
 }
 else
 {
  p = VARDATA_ANY(pat);
  plen = VARSIZE_ANY_EXHDR(pat);
  s = VARDATA_ANY(str);
  slen = VARSIZE_ANY_EXHDR(str);
  return SB_IMatchText(s, slen, p, plen, locale, locale_is_c);
 }
}
