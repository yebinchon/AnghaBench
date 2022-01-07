
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int allocatedMemory; } ;
struct TYPE_3__ {int count; int maxcount; int shouldSort; int * list; } ;
typedef int RBTNode ;
typedef int ItemPointerData ;
typedef TYPE_1__ GinEntryAccumulator ;
typedef TYPE_2__ BuildAccumulator ;


 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ GetMemoryChunkSpace (int *) ;
 int INT_MAX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int ginCompareItemPointers (int *,int *) ;
 scalar_t__ repalloc_huge (int *,int) ;

__attribute__((used)) static void
ginCombineData(RBTNode *existing, const RBTNode *newdata, void *arg)
{
 GinEntryAccumulator *eo = (GinEntryAccumulator *) existing;
 const GinEntryAccumulator *en = (const GinEntryAccumulator *) newdata;
 BuildAccumulator *accum = (BuildAccumulator *) arg;




 if (eo->count >= eo->maxcount)
 {
  if (eo->maxcount > INT_MAX)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("posting list is too long"),
      errhint("Reduce maintenance_work_mem.")));

  accum->allocatedMemory -= GetMemoryChunkSpace(eo->list);
  eo->maxcount *= 2;
  eo->list = (ItemPointerData *)
   repalloc_huge(eo->list, sizeof(ItemPointerData) * eo->maxcount);
  accum->allocatedMemory += GetMemoryChunkSpace(eo->list);
 }


 if (eo->shouldSort == 0)
 {
  int res;

  res = ginCompareItemPointers(eo->list + eo->count - 1, en->list);
  Assert(res != 0);

  if (res > 0)
   eo->shouldSort = 1;
 }

 eo->list[eo->count] = en->list[0];
 eo->count++;
}
