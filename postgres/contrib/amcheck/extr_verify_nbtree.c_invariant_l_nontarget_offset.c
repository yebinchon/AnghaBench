
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_9__ {int keysz; int * scantid; int heapkeyspace; int pivotsearch; } ;
struct TYPE_8__ {int rel; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef int ItemId ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__ BtreeCheckState ;
typedef int BlockNumber ;
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

__attribute__((used)) static inline bool
invariant_l_nontarget_offset(BtreeCheckState *state, BTScanInsert key,
        BlockNumber nontargetblock, Page nontarget,
        OffsetNumber upperbound)
{
 ItemId itemid;
 int32 cmp;

 Assert(key->pivotsearch);


 itemid = PageGetItemIdCareful(state, nontargetblock, nontarget,
          upperbound);
 cmp = _bt_compare(state->rel, key, nontarget, upperbound);


 if (!key->heapkeyspace)
  return cmp <= 0;


 if (cmp == 0)
 {
  IndexTuple child;
  int uppnkeyatts;
  ItemPointer childheaptid;
  BTPageOpaque copaque;
  bool nonpivot;

  child = (IndexTuple) PageGetItem(nontarget, itemid);
  copaque = (BTPageOpaque) PageGetSpecialPointer(nontarget);
  nonpivot = P_ISLEAF(copaque) && upperbound >= P_FIRSTDATAKEY(copaque);


  uppnkeyatts = BTreeTupleGetNKeyAtts(child, state->rel);
  childheaptid = BTreeTupleGetHeapTIDCareful(state, child, nonpivot);


  if (key->keysz == uppnkeyatts)
   return key->scantid == ((void*)0) && childheaptid != ((void*)0);

  return key->keysz < uppnkeyatts;
 }

 return cmp < 0;
}
