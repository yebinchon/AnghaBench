
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_11__ {int keysz; int * scantid; int heapkeyspace; int pivotsearch; } ;
struct TYPE_10__ {int rel; int target; int targetblock; } ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__ BtreeCheckState ;
typedef TYPE_2__* BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;


 int Assert (int ) ;
 int * BTreeTupleGetHeapTIDCareful (TYPE_1__*,scalar_t__,int) ;
 int BTreeTupleGetNKeyAtts (scalar_t__,int ) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 scalar_t__ P_ISLEAF (scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemIdCareful (TYPE_1__*,int ,int ,scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ _bt_compare (int ,TYPE_2__*,int ,scalar_t__) ;
 int invariant_leq_offset (TYPE_1__*,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static inline bool
invariant_l_offset(BtreeCheckState *state, BTScanInsert key,
       OffsetNumber upperbound)
{
 ItemId itemid;
 int32 cmp;

 Assert(key->pivotsearch);


 itemid = PageGetItemIdCareful(state, state->targetblock, state->target,
          upperbound);

 if (!key->heapkeyspace)
  return invariant_leq_offset(state, key, upperbound);

 cmp = _bt_compare(state->rel, key, state->target, upperbound);
 if (cmp == 0)
 {
  BTPageOpaque topaque;
  IndexTuple ritup;
  int uppnkeyatts;
  ItemPointer rheaptid;
  bool nonpivot;

  ritup = (IndexTuple) PageGetItem(state->target, itemid);
  topaque = (BTPageOpaque) PageGetSpecialPointer(state->target);
  nonpivot = P_ISLEAF(topaque) && upperbound >= P_FIRSTDATAKEY(topaque);


  uppnkeyatts = BTreeTupleGetNKeyAtts(ritup, state->rel);
  rheaptid = BTreeTupleGetHeapTIDCareful(state, ritup, nonpivot);


  if (key->keysz == uppnkeyatts)
   return key->scantid == ((void*)0) && rheaptid != ((void*)0);

  return key->keysz < uppnkeyatts;
 }

 return cmp < 0;
}
