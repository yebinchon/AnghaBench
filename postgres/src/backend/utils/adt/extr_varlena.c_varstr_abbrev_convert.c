
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint32 ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ typid; int buflen1; char* buf1; int last_len1; int cache_blob; char* buf2; int last_len2; int buflen2; int abbr_card; int full_card; TYPE_3__* locale; scalar_t__ collate_c; } ;
typedef TYPE_4__ VarStringSortSupport ;
typedef char VarString ;
typedef int UErrorCode ;
typedef int UCharIterator ;
typedef char UChar ;
struct TYPE_11__ {scalar_t__ ssup_extra; } ;
struct TYPE_7__ {int ucol; } ;
struct TYPE_8__ {int lt; TYPE_1__ icu; } ;
struct TYPE_9__ {scalar_t__ provider; TYPE_2__ info; } ;
typedef TYPE_5__* SortSupport ;
typedef int Size ;
typedef int Datum ;


 scalar_t__ BPCHAROID ;
 scalar_t__ COLLPROVIDER_ICU ;
 scalar_t__ COLLPROVIDER_LIBC ;
 int DatumBigEndianToNative (int) ;
 int DatumGetUInt32 (int ) ;
 char* DatumGetVarStringPP (int) ;
 int ERROR ;
 scalar_t__ GetDatabaseEncoding () ;
 void* Max (int,int) ;
 int MaxAllocSize ;
 int Min (int,int) ;
 int PG_CACHE_LINE_SIZE ;
 scalar_t__ PG_UTF8 ;
 int PointerGetDatum (char*) ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 char* VARDATA_ANY (char*) ;
 int VARSIZE_ANY_EXHDR (char*) ;
 int addHyperLogLog (int *,int) ;
 int bpchartruelen (char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int hash_any (unsigned char*,int) ;
 int hash_uint32 (int) ;
 int icu_to_uchar (char**,char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 void* palloc (int) ;
 int pfree (char*) ;
 int strxfrm (char*,char*,int) ;
 int strxfrm_l (char*,char*,int,int ) ;
 int u_errorName (int ) ;
 int ucol_getSortKey (int ,char*,int,int *,int) ;
 int ucol_nextSortKeyPart (int ,int *,scalar_t__*,int *,int,int *) ;
 int uiter_setUTF8 (int *,char*,int) ;

__attribute__((used)) static Datum
varstr_abbrev_convert(Datum original, SortSupport ssup)
{
 VarStringSortSupport *sss = (VarStringSortSupport *) ssup->ssup_extra;
 VarString *authoritative = DatumGetVarStringPP(original);
 char *authoritative_data = VARDATA_ANY(authoritative);


 Datum res;
 char *pres;
 int len;
 uint32 hash;

 pres = (char *) &res;

 memset(pres, 0, sizeof(Datum));
 len = VARSIZE_ANY_EXHDR(authoritative);


 if (sss->typid == BPCHAROID)
  len = bpchartruelen(authoritative_data, len);
 if (sss->collate_c)
  memcpy(pres, authoritative_data, Min(len, sizeof(Datum)));
 else
 {
  Size bsize;
  if (len >= sss->buflen1)
  {
   pfree(sss->buf1);
   sss->buflen1 = Max(len + 1, Min(sss->buflen1 * 2, MaxAllocSize));
   sss->buf1 = palloc(sss->buflen1);
  }


  if (sss->last_len1 == len && sss->cache_blob &&
   memcmp(sss->buf1, authoritative_data, len) == 0)
  {
   memcpy(pres, sss->buf2, Min(sizeof(Datum), sss->last_len2));

   goto done;
  }

  memcpy(sss->buf1, authoritative_data, len);





  sss->buf1[len] = '\0';
  sss->last_len1 = len;
  for (;;)
  {
    bsize = strxfrm(sss->buf2, sss->buf1, sss->buflen2);

   sss->last_len2 = bsize;
   if (bsize < sss->buflen2)
    break;




   pfree(sss->buf2);
   sss->buflen2 = Max(bsize + 1,
          Min(sss->buflen2 * 2, MaxAllocSize));
   sss->buf2 = palloc(sss->buflen2);
  }
  memcpy(pres, sss->buf2, Min(sizeof(Datum), bsize));





 }
 hash = DatumGetUInt32(hash_any((unsigned char *) authoritative_data,
           Min(len, PG_CACHE_LINE_SIZE)));

 if (len > PG_CACHE_LINE_SIZE)
  hash ^= DatumGetUInt32(hash_uint32((uint32) len));

 addHyperLogLog(&sss->full_card, hash);
 hash = DatumGetUInt32(hash_uint32((uint32) res));


 addHyperLogLog(&sss->abbr_card, hash);


 sss->cache_blob = 1;
done:
 res = DatumBigEndianToNative(res);


 if (PointerGetDatum(authoritative) != original)
  pfree(authoritative);

 return res;
}
