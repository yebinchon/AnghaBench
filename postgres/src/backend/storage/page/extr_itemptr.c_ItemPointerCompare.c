
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ItemPointer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ ItemPointerGetBlockNumberNoCheck (int ) ;
 scalar_t__ ItemPointerGetOffsetNumberNoCheck (int ) ;

int32
ItemPointerCompare(ItemPointer arg1, ItemPointer arg2)
{




 BlockNumber b1 = ItemPointerGetBlockNumberNoCheck(arg1);
 BlockNumber b2 = ItemPointerGetBlockNumberNoCheck(arg2);

 if (b1 < b2)
  return -1;
 else if (b1 > b2)
  return 1;
 else if (ItemPointerGetOffsetNumberNoCheck(arg1) <
    ItemPointerGetOffsetNumberNoCheck(arg2))
  return -1;
 else if (ItemPointerGetOffsetNumberNoCheck(arg1) >
    ItemPointerGetOffsetNumberNoCheck(arg2))
  return 1;
 else
  return 0;
}
