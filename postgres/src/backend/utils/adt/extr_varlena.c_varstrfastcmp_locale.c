
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {scalar_t__ typid; int buflen1; char* buf1; int buflen2; char* buf2; int last_len1; int last_len2; int cache_blob; int last_returned; TYPE_3__* locale; } ;
typedef TYPE_4__ VarStringSortSupport ;
typedef int UErrorCode ;
typedef char UChar ;
struct TYPE_11__ {int ssup_cxt; scalar_t__ ssup_extra; } ;
struct TYPE_7__ {int ucol; } ;
struct TYPE_8__ {int lt; TYPE_1__ icu; } ;
struct TYPE_9__ {scalar_t__ provider; scalar_t__ deterministic; TYPE_2__ info; } ;
typedef TYPE_5__* SortSupport ;


 scalar_t__ BPCHAROID ;
 scalar_t__ COLLPROVIDER_ICU ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 void* Max (int,int ) ;
 int MaxAllocSize ;
 void* MemoryContextAlloc (int ,int) ;
 int Min (int,int ) ;
 scalar_t__ PG_UTF8 ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 int bpchartruelen (char*,int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int icu_to_uchar (char**,char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int pfree (char*) ;
 int strcmp (char*,char*) ;
 int strcoll (char*,char*) ;
 int strcoll_l (char*,char*,int ) ;
 int u_errorName (int ) ;
 int ucol_strcoll (int ,char*,int ,char*,int ) ;
 int ucol_strcollUTF8 (int ,char*,int,char*,int,int *) ;

__attribute__((used)) static int
varstrfastcmp_locale(char *a1p, int len1, char *a2p, int len2, SortSupport ssup)
{
 VarStringSortSupport *sss = (VarStringSortSupport *) ssup->ssup_extra;
 int result;
 bool arg1_match;


 if (len1 == len2 && memcmp(a1p, a2p, len1) == 0)
 {
  return 0;
 }

 if (sss->typid == BPCHAROID)
 {

  len1 = bpchartruelen(a1p, len1);
  len2 = bpchartruelen(a2p, len2);
 }

 if (len1 >= sss->buflen1)
 {
  pfree(sss->buf1);
  sss->buflen1 = Max(len1 + 1, Min(sss->buflen1 * 2, MaxAllocSize));
  sss->buf1 = MemoryContextAlloc(ssup->ssup_cxt, sss->buflen1);
 }
 if (len2 >= sss->buflen2)
 {
  pfree(sss->buf2);
  sss->buflen2 = Max(len2 + 1, Min(sss->buflen2 * 2, MaxAllocSize));
  sss->buf2 = MemoryContextAlloc(ssup->ssup_cxt, sss->buflen2);
 }
 arg1_match = 1;
 if (len1 != sss->last_len1 || memcmp(sss->buf1, a1p, len1) != 0)
 {
  arg1_match = 0;
  memcpy(sss->buf1, a1p, len1);
  sss->buf1[len1] = '\0';
  sss->last_len1 = len1;
 }







 if (len2 != sss->last_len2 || memcmp(sss->buf2, a2p, len2) != 0)
 {
  memcpy(sss->buf2, a2p, len2);
  sss->buf2[len2] = '\0';
  sss->last_len2 = len2;
 }
 else if (arg1_match && !sss->cache_blob)
 {

  return sss->last_returned;
 }

 if (sss->locale)
 {
  if (sss->locale->provider == COLLPROVIDER_ICU)
  {
   elog(ERROR, "unsupported collprovider: %c", sss->locale->provider);

  }
  else
  {




   elog(ERROR, "unsupported collprovider: %c", sss->locale->provider);

  }
 }
 else
  result = strcoll(sss->buf1, sss->buf2);


 if (result == 0 &&
  (!sss->locale || sss->locale->deterministic))
  result = strcmp(sss->buf1, sss->buf2);


 sss->cache_blob = 0;
 sss->last_returned = result;
 return result;
}
