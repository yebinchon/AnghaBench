
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pg_locale_t ;
struct TYPE_3__ {int deterministic; } ;
typedef scalar_t__ Oid ;


 scalar_t__ DEFAULT_COLLATION_OID ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 int MB_MatchText (char const*,int,char const*,int,int ,int) ;
 scalar_t__ PG_UTF8 ;
 int SB_MatchText (char const*,int,char const*,int,int ,int) ;
 int UTF8_MatchText (char const*,int,char const*,int,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int lc_ctype_is_c (scalar_t__) ;
 int pg_database_encoding_max_length () ;
 TYPE_1__* pg_newlocale_from_collation (scalar_t__) ;

__attribute__((used)) static inline int
GenericMatchText(const char *s, int slen, const char *p, int plen, Oid collation)
{
 if (collation && !lc_ctype_is_c(collation) && collation != DEFAULT_COLLATION_OID)
 {
  pg_locale_t locale = pg_newlocale_from_collation(collation);

  if (locale && !locale->deterministic)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("nondeterministic collations are not supported for LIKE")));
 }

 if (pg_database_encoding_max_length() == 1)
  return SB_MatchText(s, slen, p, plen, 0, 1);
 else if (GetDatabaseEncoding() == PG_UTF8)
  return UTF8_MatchText(s, slen, p, plen, 0, 1);
 else
  return MB_MatchText(s, slen, p, plen, 0, 1);
}
