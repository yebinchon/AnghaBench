
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int targetlsn; int targetblock; int rel; int readonly; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__ BtreeCheckState ;
typedef int BlockNumber ;
typedef int BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;


 int Assert (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 scalar_t__ P_ISDELETED (scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_internal (char*,int ,int ,scalar_t__,int ,...) ;
 int errmsg (char*,int ) ;
 int invariant_l_nontarget_offset (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 scalar_t__ offset_is_negative_infinity (scalar_t__,scalar_t__) ;
 int palloc_btree_page (TYPE_1__*,int ) ;
 int pfree (int ) ;

__attribute__((used)) static void
bt_downlink_check(BtreeCheckState *state, BTScanInsert targetkey,
      BlockNumber childblock)
{
 OffsetNumber offset;
 OffsetNumber maxoffset;
 Page child;
 BTPageOpaque copaque;
 Assert(state->readonly);
 child = palloc_btree_page(state, childblock);
 copaque = (BTPageOpaque) PageGetSpecialPointer(child);
 maxoffset = PageGetMaxOffsetNumber(child);
 if (P_ISDELETED(copaque))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("downlink to deleted page found in index \"%s\"",
      RelationGetRelationName(state->rel)),
     errdetail_internal("Parent block=%u child block=%u parent page lsn=%X/%X.",
         state->targetblock, childblock,
         (uint32) (state->targetlsn >> 32),
         (uint32) state->targetlsn)));

 for (offset = P_FIRSTDATAKEY(copaque);
   offset <= maxoffset;
   offset = OffsetNumberNext(offset))
 {
  if (offset_is_negative_infinity(copaque, offset))
   continue;

  if (!invariant_l_nontarget_offset(state, targetkey, childblock, child,
            offset))
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("down-link lower bound invariant violated for index \"%s\"",
       RelationGetRelationName(state->rel)),
      errdetail_internal("Parent block=%u child index tid=(%u,%u) parent page lsn=%X/%X.",
          state->targetblock, childblock, offset,
          (uint32) (state->targetlsn >> 32),
          (uint32) state->targetlsn)));
 }

 pfree(child);
}
