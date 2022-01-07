
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ ItemPointerGetBlockNumber (int const*) ;
 scalar_t__ ItemPointerGetOffsetNumber (int const*) ;

__attribute__((used)) static int
itemptr_comparator(const void *a, const void *b)
{
 const ItemPointerData *ipa = (const ItemPointerData *) a;
 const ItemPointerData *ipb = (const ItemPointerData *) b;
 BlockNumber ba = ItemPointerGetBlockNumber(ipa);
 BlockNumber bb = ItemPointerGetBlockNumber(ipb);
 OffsetNumber oa = ItemPointerGetOffsetNumber(ipa);
 OffsetNumber ob = ItemPointerGetOffsetNumber(ipb);

 if (ba < bb)
  return -1;
 if (ba > bb)
  return 1;
 if (oa < ob)
  return -1;
 if (oa > ob)
  return 1;
 return 0;
}
