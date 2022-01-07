
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree; scalar_t__ eas_used; int * entryallocator; scalar_t__ allocatedMemory; } ;
typedef int GinEntryAccumulator ;
typedef TYPE_1__ BuildAccumulator ;


 int cmpEntryAccumulator ;
 int ginAllocEntryAccumulator ;
 int ginCombineData ;
 int rbt_create (int,int ,int ,int ,int *,void*) ;

void
ginInitBA(BuildAccumulator *accum)
{

 accum->allocatedMemory = 0;
 accum->entryallocator = ((void*)0);
 accum->eas_used = 0;
 accum->tree = rbt_create(sizeof(GinEntryAccumulator),
        cmpEntryAccumulator,
        ginCombineData,
        ginAllocEntryAccumulator,
        ((void*)0),
        (void *) accum);
}
