
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hashm_magic; scalar_t__ hashm_version; } ;
struct TYPE_4__ {int hasho_flag; } ;
typedef int Relation ;
typedef int Page ;
typedef int HashPageOpaqueData ;
typedef TYPE_1__* HashPageOpaque ;
typedef TYPE_2__* HashMetaPage ;
typedef int Buffer ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ HASH_MAGIC ;
 scalar_t__ HASH_VERSION ;
 TYPE_2__* HashPageGetMeta (int ) ;
 int LH_META_PAGE ;
 scalar_t__ MAXALIGN (int) ;
 int PageGetSpecialPointer (int ) ;
 scalar_t__ PageGetSpecialSize (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;

void
_hash_checkpage(Relation rel, Buffer buf, int flags)
{
 Page page = BufferGetPage(buf);







 if (PageIsNew(page))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("index \"%s\" contains unexpected zero page at block %u",
      RelationGetRelationName(rel),
      BufferGetBlockNumber(buf)),
     errhint("Please REINDEX it.")));




 if (PageGetSpecialSize(page) != MAXALIGN(sizeof(HashPageOpaqueData)))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("index \"%s\" contains corrupted page at block %u",
      RelationGetRelationName(rel),
      BufferGetBlockNumber(buf)),
     errhint("Please REINDEX it.")));

 if (flags)
 {
  HashPageOpaque opaque = (HashPageOpaque) PageGetSpecialPointer(page);

  if ((opaque->hasho_flag & flags) == 0)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("index \"%s\" contains corrupted page at block %u",
       RelationGetRelationName(rel),
       BufferGetBlockNumber(buf)),
      errhint("Please REINDEX it.")));
 }




 if (flags == LH_META_PAGE)
 {
  HashMetaPage metap = HashPageGetMeta(page);

  if (metap->hashm_magic != HASH_MAGIC)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("index \"%s\" is not a hash index",
       RelationGetRelationName(rel))));

  if (metap->hashm_version != HASH_VERSION)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("index \"%s\" has wrong hash version",
       RelationGetRelationName(rel)),
      errhint("Please REINDEX it.")));
 }
}
