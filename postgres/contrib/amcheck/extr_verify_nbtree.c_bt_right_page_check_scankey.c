
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int level; } ;
struct TYPE_13__ {TYPE_1__ btpo; int btpo_next; } ;
struct TYPE_12__ {int rel; int target; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ BtreeCheckState ;
typedef int BlockNumber ;
typedef int * BTScanInsert ;
typedef TYPE_3__* BTPageOpaque ;


 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 int ERRCODE_NO_DATA ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_3__*) ;
 int P_IGNORE (TYPE_3__*) ;
 scalar_t__ P_ISLEAF (TYPE_3__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_3__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemIdCareful (TYPE_2__*,int ,int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int * bt_mkscankey_pivotsearch (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*) ;
 int errmsg (char*,char*,int ,...) ;
 int palloc_btree_page (TYPE_2__*,int ) ;
 int pfree (int ) ;

__attribute__((used)) static BTScanInsert
bt_right_page_check_scankey(BtreeCheckState *state)
{
 BTPageOpaque opaque;
 ItemId rightitem;
 IndexTuple firstitup;
 BlockNumber targetnext;
 Page rightpage;
 OffsetNumber nline;


 opaque = (BTPageOpaque) PageGetSpecialPointer(state->target);


 if (P_RIGHTMOST(opaque))
  return ((void*)0);
 targetnext = opaque->btpo_next;
 for (;;)
 {
  CHECK_FOR_INTERRUPTS();

  rightpage = palloc_btree_page(state, targetnext);
  opaque = (BTPageOpaque) PageGetSpecialPointer(rightpage);

  if (!P_IGNORE(opaque) || P_RIGHTMOST(opaque))
   break;


  targetnext = opaque->btpo_next;
  ereport(DEBUG1,
    (errcode(ERRCODE_NO_DATA),
     errmsg("level %u leftmost page of index \"%s\" was found deleted or half dead",
      opaque->btpo.level, RelationGetRelationName(state->rel)),
     errdetail_internal("Deleted page found when building scankey from right sibling.")));


  pfree(rightpage);
 }
 nline = PageGetMaxOffsetNumber(rightpage);




 if (P_ISLEAF(opaque) && nline >= P_FIRSTDATAKEY(opaque))
 {

  rightitem = PageGetItemIdCareful(state, targetnext, rightpage,
           P_FIRSTDATAKEY(opaque));
 }
 else if (!P_ISLEAF(opaque) &&
    nline >= OffsetNumberNext(P_FIRSTDATAKEY(opaque)))
 {




  rightitem = PageGetItemIdCareful(state, targetnext, rightpage,
           OffsetNumberNext(P_FIRSTDATAKEY(opaque)));
 }
 else
 {





  ereport(DEBUG1,
    (errcode(ERRCODE_NO_DATA),
     errmsg("%s block %u of index \"%s\" has no first data item",
      P_ISLEAF(opaque) ? "leaf" : "internal", targetnext,
      RelationGetRelationName(state->rel))));
  return ((void*)0);
 }





 firstitup = (IndexTuple) PageGetItem(rightpage, rightitem);
 return bt_mkscankey_pivotsearch(state->rel, firstitup);
}
