
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eas_used; int * entryallocator; int allocatedMemory; } ;
typedef int RBTNode ;
typedef int GinEntryAccumulator ;
typedef TYPE_1__ BuildAccumulator ;


 int DEF_NENTRY ;
 scalar_t__ GetMemoryChunkSpace (int *) ;
 int * palloc (int) ;

__attribute__((used)) static RBTNode *
ginAllocEntryAccumulator(void *arg)
{
 BuildAccumulator *accum = (BuildAccumulator *) arg;
 GinEntryAccumulator *ea;





 if (accum->entryallocator == ((void*)0) || accum->eas_used >= DEF_NENTRY)
 {
  accum->entryallocator = palloc(sizeof(GinEntryAccumulator) * DEF_NENTRY);
  accum->allocatedMemory += GetMemoryChunkSpace(accum->entryallocator);
  accum->eas_used = 0;
 }


 ea = accum->entryallocator + accum->eas_used;
 accum->eas_used++;

 return (RBTNode *) ea;
}
