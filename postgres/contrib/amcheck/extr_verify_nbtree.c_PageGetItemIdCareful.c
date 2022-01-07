
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rel; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__ BtreeCheckState ;
typedef int BlockNumber ;
typedef int BTPageOpaqueData ;


 int BLCKSZ ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int ItemIdGetFlags (int ) ;
 scalar_t__ ItemIdGetLength (int ) ;
 int ItemIdGetOffset (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 int PageGetItemId (int ,int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,int ,int ,int,scalar_t__,int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static ItemId
PageGetItemIdCareful(BtreeCheckState *state, BlockNumber block, Page page,
      OffsetNumber offset)
{
 ItemId itemid = PageGetItemId(page, offset);

 if (ItemIdGetOffset(itemid) + ItemIdGetLength(itemid) >
  BLCKSZ - sizeof(BTPageOpaqueData))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("line pointer points past end of tuple space in index \"%s\"",
      RelationGetRelationName(state->rel)),
     errdetail_internal("Index tid=(%u,%u) lp_off=%u, lp_len=%u lp_flags=%u.",
         block, offset, ItemIdGetOffset(itemid),
         ItemIdGetLength(itemid),
         ItemIdGetFlags(itemid))));






 if (ItemIdIsRedirected(itemid) || !ItemIdIsUsed(itemid) ||
  ItemIdGetLength(itemid) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("invalid line pointer storage in index \"%s\"",
      RelationGetRelationName(state->rel)),
     errdetail_internal("Index tid=(%u,%u) lp_off=%u, lp_len=%u lp_flags=%u.",
         block, offset, ItemIdGetOffset(itemid),
         ItemIdGetLength(itemid),
         ItemIdGetFlags(itemid))));

 return itemid;
}
