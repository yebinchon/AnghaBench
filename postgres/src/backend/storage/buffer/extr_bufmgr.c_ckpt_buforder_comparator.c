
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tsId; scalar_t__ relNode; scalar_t__ forkNum; scalar_t__ blockNum; } ;
typedef TYPE_1__ CkptSortItem ;



__attribute__((used)) static int
ckpt_buforder_comparator(const void *pa, const void *pb)
{
 const CkptSortItem *a = (const CkptSortItem *) pa;
 const CkptSortItem *b = (const CkptSortItem *) pb;


 if (a->tsId < b->tsId)
  return -1;
 else if (a->tsId > b->tsId)
  return 1;

 if (a->relNode < b->relNode)
  return -1;
 else if (a->relNode > b->relNode)
  return 1;

 else if (a->forkNum < b->forkNum)
  return -1;
 else if (a->forkNum > b->forkNum)
  return 1;

 else if (a->blockNum < b->blockNum)
  return -1;
 else if (a->blockNum > b->blockNum)
  return 1;

 return 0;
}
