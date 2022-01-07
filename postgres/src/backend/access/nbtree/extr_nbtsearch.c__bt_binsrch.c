
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {scalar_t__ nextkey; int * scantid; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Buffer ;
typedef TYPE_1__* BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 scalar_t__ OffsetNumberPrev (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 scalar_t__ P_ISLEAF (scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_compare (int ,TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static OffsetNumber
_bt_binsrch(Relation rel,
   BTScanInsert key,
   Buffer buf)
{
 Page page;
 BTPageOpaque opaque;
 OffsetNumber low,
    high;
 int32 result,
    cmpval;

 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);


 Assert(!key->nextkey || key->scantid == ((void*)0));

 Assert(!P_ISLEAF(opaque) || key->scantid == ((void*)0));

 low = P_FIRSTDATAKEY(opaque);
 high = PageGetMaxOffsetNumber(page);
 if (unlikely(high < low))
  return low;
 high++;

 cmpval = key->nextkey ? 0 : 1;

 while (high > low)
 {
  OffsetNumber mid = low + ((high - low) / 2);



  result = _bt_compare(rel, key, page, mid);

  if (result >= cmpval)
   low = mid + 1;
  else
   high = mid;
 }
 if (P_ISLEAF(opaque))
  return low;





 Assert(low > P_FIRSTDATAKEY(opaque));

 return OffsetNumberPrev(low);
}
