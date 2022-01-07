
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ItemPointer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ FirstOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int ) ;

__attribute__((used)) static bool
_bt_adjacenthtid(ItemPointer lowhtid, ItemPointer highhtid)
{
 BlockNumber lowblk,
    highblk;

 lowblk = ItemPointerGetBlockNumber(lowhtid);
 highblk = ItemPointerGetBlockNumber(highhtid);


 if (lowblk == highblk)
  return 1;


 if (lowblk + 1 == highblk &&
  ItemPointerGetOffsetNumber(highhtid) == FirstOffsetNumber)
  return 1;

 return 0;
}
