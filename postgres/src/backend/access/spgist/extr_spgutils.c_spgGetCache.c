
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ leafType; scalar_t__ prefixType; scalar_t__ labelType; scalar_t__ attType; } ;
typedef TYPE_1__ spgConfigIn ;
struct TYPE_21__ {scalar_t__ atttypid; } ;
struct TYPE_20__ {int * rd_amcache; int * rd_indcollation; TYPE_10__* rd_att; int rd_indexcxt; } ;
struct TYPE_19__ {int lastUsedPages; TYPE_1__ config; int attLabelType; int attPrefixType; int attType; int attLeafType; } ;
struct TYPE_18__ {scalar_t__ magicNumber; int lastUsedPages; } ;
struct TYPE_16__ {int natts; } ;
typedef TYPE_2__ SpGistMetaPageData ;
typedef TYPE_3__ SpGistCache ;
typedef TYPE_4__* Relation ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;
typedef int Buffer ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int LockBuffer (int ,int ) ;
 TYPE_3__* MemoryContextAllocZero (int ,int) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int PointerGetDatum (TYPE_1__*) ;
 int ReadBuffer (TYPE_4__*,int ) ;
 int RelationGetRelationName (TYPE_4__*) ;
 int SPGIST_COMPRESS_PROC ;
 int SPGIST_CONFIG_PROC ;
 scalar_t__ SPGIST_MAGIC_NUMBER ;
 int SPGIST_METAPAGE_BLKNO ;
 TYPE_2__* SpGistPageGetMeta (int ) ;
 TYPE_9__* TupleDescAttr (TYPE_10__*,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int fillTypeDesc (int *,scalar_t__) ;
 scalar_t__ index_getprocid (TYPE_4__*,int,int ) ;
 int * index_getprocinfo (TYPE_4__*,int,int ) ;

SpGistCache *
spgGetCache(Relation index)
{
 SpGistCache *cache;

 if (index->rd_amcache == ((void*)0))
 {
  Oid atttype;
  spgConfigIn in;
  FmgrInfo *procinfo;
  Buffer metabuffer;
  SpGistMetaPageData *metadata;

  cache = MemoryContextAllocZero(index->rd_indexcxt,
            sizeof(SpGistCache));


  Assert(index->rd_att->natts == 1);






  atttype = TupleDescAttr(index->rd_att, 0)->atttypid;


  in.attType = atttype;

  procinfo = index_getprocinfo(index, 1, SPGIST_CONFIG_PROC);
  FunctionCall2Coll(procinfo,
        index->rd_indcollation[0],
        PointerGetDatum(&in),
        PointerGetDatum(&cache->config));


  fillTypeDesc(&cache->attType, atttype);

  if (OidIsValid(cache->config.leafType) &&
   cache->config.leafType != atttype)
  {
   if (!OidIsValid(index_getprocid(index, 1, SPGIST_COMPRESS_PROC)))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("compress method must be defined when leaf type is different from input type")));

   fillTypeDesc(&cache->attLeafType, cache->config.leafType);
  }
  else
  {
   cache->attLeafType = cache->attType;
  }

  fillTypeDesc(&cache->attPrefixType, cache->config.prefixType);
  fillTypeDesc(&cache->attLabelType, cache->config.labelType);


  metabuffer = ReadBuffer(index, SPGIST_METAPAGE_BLKNO);
  LockBuffer(metabuffer, BUFFER_LOCK_SHARE);

  metadata = SpGistPageGetMeta(BufferGetPage(metabuffer));

  if (metadata->magicNumber != SPGIST_MAGIC_NUMBER)
   elog(ERROR, "index \"%s\" is not an SP-GiST index",
     RelationGetRelationName(index));

  cache->lastUsedPages = metadata->lastUsedPages;

  UnlockReleaseBuffer(metabuffer);

  index->rd_amcache = (void *) cache;
 }
 else
 {

  cache = (SpGistCache *) index->rd_amcache;
 }

 return cache;
}
