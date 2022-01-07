
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OffsetNumber ;
typedef int ItemPointer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ ItemPointerGetBlockNumber (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int ) ;

__attribute__((used)) static int
vac_cmp_itemptr(const void *left, const void *right)
{
 BlockNumber lblk,
    rblk;
 OffsetNumber loff,
    roff;

 lblk = ItemPointerGetBlockNumber((ItemPointer) left);
 rblk = ItemPointerGetBlockNumber((ItemPointer) right);

 if (lblk < rblk)
  return -1;
 if (lblk > rblk)
  return 1;

 loff = ItemPointerGetOffsetNumber((ItemPointer) left);
 roff = ItemPointerGetOffsetNumber((ItemPointer) right);

 if (loff < roff)
  return -1;
 if (loff > roff)
  return 1;

 return 0;
}
