
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int allocatedMemory; int tree; } ;
struct TYPE_5__ {int maxcount; int count; int shouldSort; int * list; int key; scalar_t__ category; int attnum; } ;
typedef int RBTNode ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef scalar_t__ GinNullCategory ;
typedef TYPE_1__ GinEntryAccumulator ;
typedef int Datum ;
typedef TYPE_2__ BuildAccumulator ;


 int DEF_NPTR ;
 scalar_t__ GIN_CAT_NORM_KEY ;
 scalar_t__ GetMemoryChunkSpace (int *) ;
 int getDatumCopy (TYPE_2__*,int ,int ) ;
 scalar_t__ palloc (int) ;
 scalar_t__ rbt_insert (int ,int *,int*) ;

__attribute__((used)) static void
ginInsertBAEntry(BuildAccumulator *accum,
     ItemPointer heapptr, OffsetNumber attnum,
     Datum key, GinNullCategory category)
{
 GinEntryAccumulator eatmp;
 GinEntryAccumulator *ea;
 bool isNew;





 eatmp.attnum = attnum;
 eatmp.key = key;
 eatmp.category = category;

 eatmp.list = heapptr;

 ea = (GinEntryAccumulator *) rbt_insert(accum->tree, (RBTNode *) &eatmp,
           &isNew);

 if (isNew)
 {




  if (category == GIN_CAT_NORM_KEY)
   ea->key = getDatumCopy(accum, attnum, key);
  ea->maxcount = DEF_NPTR;
  ea->count = 1;
  ea->shouldSort = 0;
  ea->list =
   (ItemPointerData *) palloc(sizeof(ItemPointerData) * DEF_NPTR);
  ea->list[0] = *heapptr;
  accum->allocatedMemory += GetMemoryChunkSpace(ea->list);
 }
 else
 {



 }
}
