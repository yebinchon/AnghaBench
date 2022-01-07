
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_self; } ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__* HeapTuple ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;

__attribute__((used)) static int
compare_rows(const void *a, const void *b)
{
 HeapTuple ha = *(const HeapTuple *) a;
 HeapTuple hb = *(const HeapTuple *) b;
 BlockNumber ba = ItemPointerGetBlockNumber(&ha->t_self);
 OffsetNumber oa = ItemPointerGetOffsetNumber(&ha->t_self);
 BlockNumber bb = ItemPointerGetBlockNumber(&hb->t_self);
 OffsetNumber ob = ItemPointerGetOffsetNumber(&hb->t_self);

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
