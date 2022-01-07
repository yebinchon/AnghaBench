
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_14__ {int level; } ;
struct TYPE_16__ {TYPE_1__ btpo; int btpo_prev; } ;
struct TYPE_15__ {scalar_t__ targetblock; int targetlsn; int rel; int target; int downlinkfilter; scalar_t__ rightsplit; scalar_t__ readonly; scalar_t__ heapallindexed; } ;
typedef int Page ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ BtreeCheckState ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_3__* BTPageOpaque ;


 int Assert (int) ;
 scalar_t__ BTreeInnerTupleGetDownLink (scalar_t__) ;
 scalar_t__ BTreeTupleGetTopParent (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERRCODE_NO_DATA ;
 int ERROR ;
 int P_FIRSTDATAKEY (TYPE_3__*) ;
 int P_HIKEY ;
 int P_IGNORE (TYPE_3__*) ;
 scalar_t__ P_ISDELETED (TYPE_3__*) ;
 scalar_t__ P_ISHALFDEAD (TYPE_3__*) ;
 scalar_t__ P_ISLEAF (TYPE_3__*) ;
 scalar_t__ P_ISROOT (TYPE_3__*) ;
 int P_RIGHTMOST (TYPE_3__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemIdCareful (TYPE_2__*,scalar_t__,int ,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int bloom_lacks_element (int ,unsigned char*,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,scalar_t__,scalar_t__,int,...) ;
 int errmsg (char*,int ) ;
 int errmsg_internal (char*,int ) ;
 int palloc_btree_page (TYPE_2__*,scalar_t__) ;
 int pfree (int ) ;

__attribute__((used)) static void
bt_downlink_missing_check(BtreeCheckState *state)
{
 BTPageOpaque topaque = (BTPageOpaque) PageGetSpecialPointer(state->target);
 ItemId itemid;
 IndexTuple itup;
 Page child;
 BTPageOpaque copaque;
 uint32 level;
 BlockNumber childblk;

 Assert(state->heapallindexed && state->readonly);
 Assert(!P_IGNORE(topaque));


 if (P_ISROOT(topaque))
  return;
 if (state->rightsplit)
 {
  ereport(DEBUG1,
    (errcode(ERRCODE_NO_DATA),
     errmsg("harmless interrupted page split detected in index %s",
      RelationGetRelationName(state->rel)),
     errdetail_internal("Block=%u level=%u left sibling=%u page lsn=%X/%X.",
         state->targetblock, topaque->btpo.level,
         topaque->btpo_prev,
         (uint32) (state->targetlsn >> 32),
         (uint32) state->targetlsn)));
  return;
 }


 if (!bloom_lacks_element(state->downlinkfilter,
        (unsigned char *) &state->targetblock,
        sizeof(BlockNumber)))
  return;
 if (P_ISLEAF(topaque))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("leaf index block lacks downlink in index \"%s\"",
      RelationGetRelationName(state->rel)),
     errdetail_internal("Block=%u page lsn=%X/%X.",
         state->targetblock,
         (uint32) (state->targetlsn >> 32),
         (uint32) state->targetlsn)));


 elog(DEBUG1, "checking for interrupted multi-level deletion due to missing downlink in index \"%s\"",
   RelationGetRelationName(state->rel));

 level = topaque->btpo.level;
 itemid = PageGetItemIdCareful(state, state->targetblock, state->target,
          P_FIRSTDATAKEY(topaque));
 itup = (IndexTuple) PageGetItem(state->target, itemid);
 childblk = BTreeInnerTupleGetDownLink(itup);
 for (;;)
 {
  CHECK_FOR_INTERRUPTS();

  child = palloc_btree_page(state, childblk);
  copaque = (BTPageOpaque) PageGetSpecialPointer(child);

  if (P_ISLEAF(copaque))
   break;


  if (copaque->btpo.level != level - 1)
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg_internal("downlink points to block in index \"%s\" whose level is not one level down",
          RelationGetRelationName(state->rel)),
      errdetail_internal("Top parent/target block=%u block pointed to=%u expected level=%u level in pointed to block=%u.",
          state->targetblock, childblk,
          level - 1, copaque->btpo.level)));

  level = copaque->btpo.level;
  itemid = PageGetItemIdCareful(state, childblk, child,
           P_FIRSTDATAKEY(copaque));
  itup = (IndexTuple) PageGetItem(child, itemid);
  childblk = BTreeInnerTupleGetDownLink(itup);

  pfree(child);
 }
 if (P_ISDELETED(copaque))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg_internal("downlink to deleted leaf page found in index \"%s\"",
         RelationGetRelationName(state->rel)),
     errdetail_internal("Top parent/target block=%u leaf block=%u top parent/target lsn=%X/%X.",
         state->targetblock, childblk,
         (uint32) (state->targetlsn >> 32),
         (uint32) state->targetlsn)));
 if (P_ISHALFDEAD(copaque) && !P_RIGHTMOST(copaque))
 {
  itemid = PageGetItemIdCareful(state, childblk, child, P_HIKEY);
  itup = (IndexTuple) PageGetItem(child, itemid);
  if (BTreeTupleGetTopParent(itup) == state->targetblock)
   return;
 }

 ereport(ERROR,
   (errcode(ERRCODE_INDEX_CORRUPTED),
    errmsg("internal index block lacks downlink in index \"%s\"",
     RelationGetRelationName(state->rel)),
    errdetail_internal("Block=%u level=%u page lsn=%X/%X.",
        state->targetblock, topaque->btpo.level,
        (uint32) (state->targetlsn >> 32),
        (uint32) state->targetlsn)));
}
