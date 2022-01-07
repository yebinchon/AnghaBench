
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int bloomLength; } ;
struct TYPE_14__ {scalar_t__ magickNumber; int opts; } ;
struct TYPE_13__ {int nColumns; TYPE_5__ opts; scalar_t__ sizeOfBloomTuple; int * collations; int * hashFn; } ;
struct TYPE_12__ {void* rd_amcache; int rd_indexcxt; int * rd_indcollation; TYPE_1__* rd_att; } ;
struct TYPE_11__ {int natts; } ;
typedef TYPE_2__* Relation ;
typedef int Page ;
typedef int Buffer ;
typedef TYPE_3__ BloomState ;
typedef int BloomSignatureWord ;
typedef int BloomOptions ;
typedef TYPE_4__ BloomMetaPageData ;


 scalar_t__ BLOOMTUPLEHDRSZ ;
 int BLOOM_HASH_PROC ;
 scalar_t__ BLOOM_MAGICK_NUMBER ;
 int BLOOM_METAPAGE_BLKNO ;
 int BUFFER_LOCK_SHARE ;
 TYPE_4__* BloomPageGetMeta (int ) ;
 int BloomPageIsMeta (int ) ;
 int BufferGetPage (int ) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int LockBuffer (int ,int ) ;
 int * MemoryContextAlloc (int ,int) ;
 int ReadBuffer (TYPE_2__*,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*) ;
 int fmgr_info_copy (int *,int ,int ) ;
 int index_getprocinfo (TYPE_2__*,int,int ) ;
 int memcpy (TYPE_5__*,void*,int) ;

void
initBloomState(BloomState *state, Relation index)
{
 int i;

 state->nColumns = index->rd_att->natts;


 for (i = 0; i < index->rd_att->natts; i++)
 {
  fmgr_info_copy(&(state->hashFn[i]),
        index_getprocinfo(index, i + 1, BLOOM_HASH_PROC),
        CurrentMemoryContext);
  state->collations[i] = index->rd_indcollation[i];
 }


 if (!index->rd_amcache)
 {
  Buffer buffer;
  Page page;
  BloomMetaPageData *meta;
  BloomOptions *opts;

  opts = MemoryContextAlloc(index->rd_indexcxt, sizeof(BloomOptions));

  buffer = ReadBuffer(index, BLOOM_METAPAGE_BLKNO);
  LockBuffer(buffer, BUFFER_LOCK_SHARE);

  page = BufferGetPage(buffer);

  if (!BloomPageIsMeta(page))
   elog(ERROR, "Relation is not a bloom index");
  meta = BloomPageGetMeta(BufferGetPage(buffer));

  if (meta->magickNumber != BLOOM_MAGICK_NUMBER)
   elog(ERROR, "Relation is not a bloom index");

  *opts = meta->opts;

  UnlockReleaseBuffer(buffer);

  index->rd_amcache = (void *) opts;
 }

 memcpy(&state->opts, index->rd_amcache, sizeof(state->opts));
 state->sizeOfBloomTuple = BLOOMTUPLEHDRSZ +
  sizeof(BloomSignatureWord) * state->opts.bloomLength;
}
