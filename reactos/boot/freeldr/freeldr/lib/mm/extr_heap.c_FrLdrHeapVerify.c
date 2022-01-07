
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int Size; scalar_t__ Tag; } ;
struct TYPE_8__ {TYPE_2__ Blocks; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_2__* PHEAP_BLOCK ;
typedef TYPE_1__* PHEAP ;
typedef int HEAP_BLOCK ;


 int ASSERT (int) ;
 scalar_t__* REDZONE_HI (TYPE_2__*) ;
 scalar_t__* REDZONE_LOW (TYPE_2__*) ;
 scalar_t__ REDZONE_MARK ;
 int* REDZONE_SIZE (TYPE_2__*) ;

VOID
FrLdrHeapVerify(
    PVOID HeapHandle)
{
    PHEAP Heap = HeapHandle;
    PHEAP_BLOCK Block;


    for (Block = &Heap->Blocks;
         Block->Size != 0;
         Block = Block + 1 + Block->Size)
    {

        if (Block->Tag != 0)
        {

            ASSERT(*REDZONE_SIZE(Block) <= Block->Size * sizeof(HEAP_BLOCK));
            ASSERT(*REDZONE_LOW(Block) == REDZONE_MARK);
            ASSERT(*REDZONE_HI(Block) == REDZONE_MARK);
            continue;
        }
    }
}
