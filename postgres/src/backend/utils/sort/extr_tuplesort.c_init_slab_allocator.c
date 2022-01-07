
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* slabMemoryBegin; char* slabMemoryEnd; int slabAllocatorUsed; TYPE_2__* slabFreeHead; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_6__ {struct TYPE_6__* nextfree; } ;
typedef TYPE_2__ SlabSlot ;


 int SLAB_SLOT_SIZE ;
 int USEMEM (TYPE_1__*,int) ;
 char* palloc (int) ;

__attribute__((used)) static void
init_slab_allocator(Tuplesortstate *state, int numSlots)
{
 if (numSlots > 0)
 {
  char *p;
  int i;

  state->slabMemoryBegin = palloc(numSlots * SLAB_SLOT_SIZE);
  state->slabMemoryEnd = state->slabMemoryBegin +
   numSlots * SLAB_SLOT_SIZE;
  state->slabFreeHead = (SlabSlot *) state->slabMemoryBegin;
  USEMEM(state, numSlots * SLAB_SLOT_SIZE);

  p = state->slabMemoryBegin;
  for (i = 0; i < numSlots - 1; i++)
  {
   ((SlabSlot *) p)->nextfree = (SlabSlot *) (p + SLAB_SLOT_SIZE);
   p += SLAB_SLOT_SIZE;
  }
  ((SlabSlot *) p)->nextfree = ((void*)0);
 }
 else
 {
  state->slabMemoryBegin = state->slabMemoryEnd = ((void*)0);
  state->slabFreeHead = ((void*)0);
 }
 state->slabAllocatorUsed = 1;
}
