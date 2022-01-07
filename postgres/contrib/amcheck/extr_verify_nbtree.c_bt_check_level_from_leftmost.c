
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ level; } ;
struct TYPE_22__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; TYPE_1__ btpo; } ;
struct TYPE_21__ {int targetcontext; int rightsplit; int rel; scalar_t__ readonly; int target; scalar_t__ targetblock; int targetlsn; } ;
struct TYPE_20__ {scalar_t__ leftmost; scalar_t__ level; int istruerootlevel; } ;
typedef int MemoryContext ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ BtreeLevel ;
typedef TYPE_3__ BtreeCheckState ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_4__* BTPageOpaque ;


 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 int DEBUG2 ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERRCODE_NO_DATA ;
 int ERROR ;
 scalar_t__ InvalidBlockNumber ;
 void* InvalidBtreeLevel ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int P_FIRSTDATAKEY (TYPE_4__*) ;
 scalar_t__ P_IGNORE (TYPE_4__*) ;
 int P_INCOMPLETE_SPLIT (TYPE_4__*) ;
 scalar_t__ P_ISDELETED (TYPE_4__*) ;
 int P_ISLEAF (TYPE_4__*) ;
 int P_ISROOT (TYPE_4__*) ;
 int P_LEFTMOST (TYPE_4__*) ;
 scalar_t__ P_NONE ;
 scalar_t__ P_RIGHTMOST (TYPE_4__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemIdCareful (TYPE_3__*,scalar_t__,int ,int ) ;
 int PageGetLSN (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int bt_target_page_check (TYPE_3__*) ;
 int elog (int ,char*,scalar_t__,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int errmsg (char*,scalar_t__,...) ;
 int palloc_btree_page (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static BtreeLevel
bt_check_level_from_leftmost(BtreeCheckState *state, BtreeLevel level)
{

 BTPageOpaque opaque;
 MemoryContext oldcontext;
 BtreeLevel nextleveldown;


 BlockNumber leftcurrent = P_NONE;
 BlockNumber current = level.leftmost;


 nextleveldown.leftmost = InvalidBlockNumber;
 nextleveldown.level = InvalidBtreeLevel;
 nextleveldown.istruerootlevel = 0;


 oldcontext = MemoryContextSwitchTo(state->targetcontext);

 elog(DEBUG2, "verifying level %u%s", level.level,
   level.istruerootlevel ?
   " (true root level)" : level.level == 0 ? " (leaf level)" : "");

 do
 {

  CHECK_FOR_INTERRUPTS();


  state->targetblock = current;
  state->target = palloc_btree_page(state, state->targetblock);
  state->targetlsn = PageGetLSN(state->target);

  opaque = (BTPageOpaque) PageGetSpecialPointer(state->target);

  if (P_IGNORE(opaque))
  {
   if (state->readonly && P_ISDELETED(opaque))
    ereport(ERROR,
      (errcode(ERRCODE_INDEX_CORRUPTED),
       errmsg("downlink or sibling link points to deleted block in index \"%s\"",
        RelationGetRelationName(state->rel)),
       errdetail_internal("Block=%u left block=%u left link from block=%u.",
           current, leftcurrent, opaque->btpo_prev)));

   if (P_RIGHTMOST(opaque))
    ereport(ERROR,
      (errcode(ERRCODE_INDEX_CORRUPTED),
       errmsg("block %u fell off the end of index \"%s\"",
        current, RelationGetRelationName(state->rel))));
   else
    ereport(DEBUG1,
      (errcode(ERRCODE_NO_DATA),
       errmsg("block %u of index \"%s\" ignored",
        current, RelationGetRelationName(state->rel))));
   goto nextpage;
  }
  else if (nextleveldown.leftmost == InvalidBlockNumber)
  {







   if (state->readonly)
   {
    if (!P_LEFTMOST(opaque))
     ereport(ERROR,
       (errcode(ERRCODE_INDEX_CORRUPTED),
        errmsg("block %u is not leftmost in index \"%s\"",
         current, RelationGetRelationName(state->rel))));

    if (level.istruerootlevel && !P_ISROOT(opaque))
     ereport(ERROR,
       (errcode(ERRCODE_INDEX_CORRUPTED),
        errmsg("block %u is not true root in index \"%s\"",
         current, RelationGetRelationName(state->rel))));
   }
   if (!P_ISLEAF(opaque))
   {
    IndexTuple itup;
    ItemId itemid;


    itemid = PageGetItemIdCareful(state, state->targetblock,
             state->target,
             P_FIRSTDATAKEY(opaque));
    itup = (IndexTuple) PageGetItem(state->target, itemid);
    nextleveldown.leftmost = BTreeInnerTupleGetDownLink(itup);
    nextleveldown.level = opaque->btpo.level - 1;
   }
   else
   {






    nextleveldown.leftmost = P_NONE;
    nextleveldown.level = InvalidBtreeLevel;
   }






  }





  if (state->readonly && opaque->btpo_prev != leftcurrent)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("left link/right link pair in index \"%s\" not in agreement",
       RelationGetRelationName(state->rel)),
      errdetail_internal("Block=%u left block=%u left link from block=%u.",
          current, leftcurrent, opaque->btpo_prev)));


  if (level.level != opaque->btpo.level)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("leftmost down link for level points to block in index \"%s\" whose level is not one level down",
       RelationGetRelationName(state->rel)),
      errdetail_internal("Block pointed to=%u expected level=%u level in pointed to block=%u.",
          current, level.level, opaque->btpo.level)));


  bt_target_page_check(state);

nextpage:


  if (current == leftcurrent || current == opaque->btpo_prev)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("circular link chain found in block %u of index \"%s\"",
       current, RelationGetRelationName(state->rel))));






  state->rightsplit = P_INCOMPLETE_SPLIT(opaque);

  leftcurrent = current;
  current = opaque->btpo_next;


  MemoryContextReset(state->targetcontext);
 }
 while (current != P_NONE);


 MemoryContextSwitchTo(oldcontext);

 return nextleveldown;
}
