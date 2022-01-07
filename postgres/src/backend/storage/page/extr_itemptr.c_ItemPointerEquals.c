
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int ItemPointerData ;
typedef int ItemPointer ;


 scalar_t__ ItemPointerGetBlockNumber (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int ) ;
 int StaticAssertStmt (int,char*) ;

bool
ItemPointerEquals(ItemPointer pointer1, ItemPointer pointer2)
{




 StaticAssertStmt(sizeof(ItemPointerData) == 3 * sizeof(uint16),
      "ItemPointerData struct is improperly padded");

 if (ItemPointerGetBlockNumber(pointer1) ==
  ItemPointerGetBlockNumber(pointer2) &&
  ItemPointerGetOffsetNumber(pointer1) ==
  ItemPointerGetOffsetNumber(pointer2))
  return 1;
 else
  return 0;
}
