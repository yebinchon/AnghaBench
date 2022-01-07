
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef double uint16 ;
struct TYPE_9__ {double hashm_ffactor; int hashm_bsize; int hashm_bmsize; int hashm_maxbucket; int hashm_highmask; int hashm_lowmask; int* hashm_spares; int* hashm_mapp; int hashm_ovflpoint; scalar_t__ hashm_firstfree; int hashm_procid; scalar_t__ hashm_bmshift; scalar_t__ hashm_nmaps; scalar_t__ hashm_ntuples; int hashm_version; int hashm_magic; } ;
struct TYPE_8__ {int hasho_bucket; int hasho_page_id; int hasho_flag; void* hasho_nextblkno; void* hasho_prevblkno; } ;
struct TYPE_7__ {int pd_lower; } ;
typedef int RegProcedure ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__* HashPageOpaque ;
typedef int HashMetaPageData ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;


 int Assert (int) ;
 int BMPG_MASK (TYPE_3__*) ;
 int BMPG_SHIFT (TYPE_3__*) ;
 scalar_t__ BYTE_TO_BIT ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int HASHO_PAGE_ID ;
 int HASH_MAGIC ;
 int HASH_MAX_SPLITPOINTS ;
 int HASH_VERSION ;
 int HashGetMaxBitmapSize (scalar_t__) ;
 TYPE_3__* HashPageGetMeta (scalar_t__) ;
 void* InvalidBlockNumber ;
 int LH_META_PAGE ;
 int MemSet (int*,int ,int) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int _hash_get_totalbuckets (int) ;
 int _hash_log2 (int) ;
 int _hash_pageinit (scalar_t__,int ) ;
 int _hash_spareindex (int) ;

void
_hash_init_metabuffer(Buffer buf, double num_tuples, RegProcedure procid,
       uint16 ffactor, bool initpage)
{
 HashMetaPage metap;
 HashPageOpaque pageopaque;
 Page page;
 double dnumbuckets;
 uint32 num_buckets;
 uint32 spare_index;
 uint32 i;
 dnumbuckets = num_tuples / ffactor;
 if (dnumbuckets <= 2.0)
  num_buckets = 2;
 else if (dnumbuckets >= (double) 0x40000000)
  num_buckets = 0x40000000;
 else
  num_buckets = _hash_get_totalbuckets(_hash_spareindex(dnumbuckets));

 spare_index = _hash_spareindex(num_buckets);
 Assert(spare_index < HASH_MAX_SPLITPOINTS);

 page = BufferGetPage(buf);
 if (initpage)
  _hash_pageinit(page, BufferGetPageSize(buf));

 pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
 pageopaque->hasho_prevblkno = InvalidBlockNumber;
 pageopaque->hasho_nextblkno = InvalidBlockNumber;
 pageopaque->hasho_bucket = -1;
 pageopaque->hasho_flag = LH_META_PAGE;
 pageopaque->hasho_page_id = HASHO_PAGE_ID;

 metap = HashPageGetMeta(page);

 metap->hashm_magic = HASH_MAGIC;
 metap->hashm_version = HASH_VERSION;
 metap->hashm_ntuples = 0;
 metap->hashm_nmaps = 0;
 metap->hashm_ffactor = ffactor;
 metap->hashm_bsize = HashGetMaxBitmapSize(page);

 for (i = _hash_log2(metap->hashm_bsize); i > 0; --i)
 {
  if ((1 << i) <= metap->hashm_bsize)
   break;
 }
 Assert(i > 0);
 metap->hashm_bmsize = 1 << i;
 metap->hashm_bmshift = i + BYTE_TO_BIT;
 Assert((1 << BMPG_SHIFT(metap)) == (BMPG_MASK(metap) + 1));






 metap->hashm_procid = procid;





 metap->hashm_maxbucket = num_buckets - 1;





 metap->hashm_highmask = (1 << (_hash_log2(num_buckets + 1))) - 1;
 metap->hashm_lowmask = (metap->hashm_highmask >> 1);

 MemSet(metap->hashm_spares, 0, sizeof(metap->hashm_spares));
 MemSet(metap->hashm_mapp, 0, sizeof(metap->hashm_mapp));


 metap->hashm_spares[spare_index] = 1;
 metap->hashm_ovflpoint = spare_index;
 metap->hashm_firstfree = 0;






 ((PageHeader) page)->pd_lower =
  ((char *) metap + sizeof(HashMetaPageData)) - (char *) page;
}
