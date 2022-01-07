
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BTPageOpaqueData ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ MAXALIGN (int) ;
 scalar_t__ PageGetSpecialSize (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;

void
_bt_checkpage(Relation rel, Buffer buf)
{
 Page page = BufferGetPage(buf);







 if (PageIsNew(page))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("index \"%s\" contains unexpected zero page at block %u",
      RelationGetRelationName(rel),
      BufferGetBlockNumber(buf)),
     errhint("Please REINDEX it.")));




 if (PageGetSpecialSize(page) != MAXALIGN(sizeof(BTPageOpaqueData)))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("index \"%s\" contains corrupted page at block %u",
      RelationGetRelationName(rel),
      BufferGetBlockNumber(buf)),
     errhint("Please REINDEX it.")));
}
