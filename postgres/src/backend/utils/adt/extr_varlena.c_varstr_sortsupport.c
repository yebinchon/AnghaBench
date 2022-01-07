
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* pg_locale_t ;
struct TYPE_7__ {int buflen1; int buflen2; int last_len1; int last_len2; int cache_blob; int collate_c; double prop_card; int full_card; int abbr_card; scalar_t__ typid; TYPE_1__* locale; scalar_t__ last_returned; void* buf2; void* buf1; } ;
typedef TYPE_2__ VarStringSortSupport ;
struct TYPE_8__ {int abbreviate; int abbrev_abort; int abbrev_converter; int comparator; int abbrev_full_comparator; TYPE_2__* ssup_extra; } ;
struct TYPE_6__ {scalar_t__ provider; } ;
typedef TYPE_3__* SortSupport ;
typedef scalar_t__ Oid ;


 scalar_t__ BPCHAROID ;
 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ NAMEOID ;
 scalar_t__ PG_UTF8 ;
 int TEXTBUFLEN ;
 int bpcharfastcmp_c ;
 int check_collation_set (scalar_t__) ;
 int initHyperLogLog (int *,int) ;
 scalar_t__ lc_collate_is_c (scalar_t__) ;
 int namefastcmp_c ;
 int namefastcmp_locale ;
 void* palloc (int) ;
 TYPE_1__* pg_newlocale_from_collation (scalar_t__) ;
 int varlenafastcmp_locale ;
 int varstr_abbrev_abort ;
 int varstr_abbrev_convert ;
 int varstrcmp_abbrev ;
 int varstrfastcmp_c ;

void
varstr_sortsupport(SortSupport ssup, Oid typid, Oid collid)
{
 bool abbreviate = ssup->abbreviate;
 bool collate_c = 0;
 VarStringSortSupport *sss;
 pg_locale_t locale = 0;

 check_collation_set(collid);
 if (lc_collate_is_c(collid))
 {
  if (typid == BPCHAROID)
   ssup->comparator = bpcharfastcmp_c;
  else if (typid == NAMEOID)
  {
   ssup->comparator = namefastcmp_c;

   abbreviate = 0;
  }
  else
   ssup->comparator = varstrfastcmp_c;

  collate_c = 1;
 }
 else
 {





  if (collid != DEFAULT_COLLATION_OID)
   locale = pg_newlocale_from_collation(collid);
  if (typid == NAMEOID)
  {
   ssup->comparator = namefastcmp_locale;

   abbreviate = 0;
  }
  else
   ssup->comparator = varlenafastcmp_locale;
 }
 if (!collate_c && !(locale && locale->provider == COLLPROVIDER_ICU))
  abbreviate = 0;
 if (abbreviate || !collate_c)
 {
  sss = palloc(sizeof(VarStringSortSupport));
  sss->buf1 = palloc(TEXTBUFLEN);
  sss->buflen1 = TEXTBUFLEN;
  sss->buf2 = palloc(TEXTBUFLEN);
  sss->buflen2 = TEXTBUFLEN;

  sss->last_len1 = -1;
  sss->last_len2 = -1;

  sss->last_returned = 0;
  sss->locale = locale;
  sss->cache_blob = 1;
  sss->collate_c = collate_c;
  sss->typid = typid;
  ssup->ssup_extra = sss;






  if (abbreviate)
  {
   sss->prop_card = 0.20;
   initHyperLogLog(&sss->abbr_card, 10);
   initHyperLogLog(&sss->full_card, 10);
   ssup->abbrev_full_comparator = ssup->comparator;
   ssup->comparator = varstrcmp_abbrev;
   ssup->abbrev_converter = varstr_abbrev_convert;
   ssup->abbrev_abort = varstr_abbrev_abort;
  }
 }
}
