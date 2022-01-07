
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; int buf; TYPE_1__* itup_key; } ;
struct TYPE_5__ {int nextkey; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__* BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;
typedef TYPE_2__* BTInsertState ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 void* InvalidOffsetNumber ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 int P_ISLEAF (scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_compare (int ,TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

OffsetNumber
_bt_binsrch_insert(Relation rel, BTInsertState insertstate)
{
 BTScanInsert key = insertstate->itup_key;
 Page page;
 BTPageOpaque opaque;
 OffsetNumber low,
    high,
    stricthigh;
 int32 result,
    cmpval;

 page = BufferGetPage(insertstate->buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 Assert(P_ISLEAF(opaque));
 Assert(!key->nextkey);

 if (!insertstate->bounds_valid)
 {

  low = P_FIRSTDATAKEY(opaque);
  high = PageGetMaxOffsetNumber(page);
 }
 else
 {

  low = insertstate->low;
  high = insertstate->stricthigh;
 }


 if (unlikely(high < low))
 {

  insertstate->low = InvalidOffsetNumber;
  insertstate->stricthigh = InvalidOffsetNumber;
  insertstate->bounds_valid = 0;
  return low;
 }
 if (!insertstate->bounds_valid)
  high++;
 stricthigh = high;

 cmpval = 1;

 while (high > low)
 {
  OffsetNumber mid = low + ((high - low) / 2);



  result = _bt_compare(rel, key, page, mid);

  if (result >= cmpval)
   low = mid + 1;
  else
  {
   high = mid;
   if (result != 0)
    stricthigh = high;
  }
 }
 insertstate->low = low;
 insertstate->stricthigh = stricthigh;
 insertstate->bounds_valid = 1;

 return low;
}
