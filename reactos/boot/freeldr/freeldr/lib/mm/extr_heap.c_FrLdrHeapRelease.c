
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_10__ {int Size; scalar_t__ Tag; int Data; } ;
struct TYPE_9__ {scalar_t__ MaximumSize; TYPE_2__ Blocks; } ;
typedef TYPE_1__* PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_2__* PHEAP_BLOCK ;
typedef TYPE_1__* PHEAP ;
typedef scalar_t__ PFN_COUNT ;
typedef int HEAP_BLOCK ;


 scalar_t__ ALIGN_DOWN_POINTER_BY (int ,int ) ;
 scalar_t__ ALIGN_UP_POINTER_BY (int ,int ) ;
 int ASSERT (int) ;
 int LoaderFree ;
 scalar_t__ MM_PAGE_SIZE ;
 int MmMarkPagesInLookupTable (int ,scalar_t__,scalar_t__,int ) ;
 int PAGE_SIZE ;
 int PageLookupTableAddress ;
 scalar_t__* REDZONE_HI (TYPE_2__*) ;
 scalar_t__* REDZONE_LOW (TYPE_2__*) ;
 scalar_t__ REDZONE_MARK ;
 int* REDZONE_SIZE (TYPE_2__*) ;
 int TRACE (char*,TYPE_1__*,...) ;

VOID
FrLdrHeapRelease(
    PVOID HeapHandle)
{
    PHEAP Heap = HeapHandle;
    PHEAP_BLOCK Block;
    PUCHAR StartAddress, EndAddress;
    PFN_COUNT FreePages, AllFreePages = 0;

    TRACE("HeapRelease(%p)\n", HeapHandle);


    for (Block = &Heap->Blocks;
         Block->Size != 0;
         Block = Block + 1 + Block->Size)
    {

        if (Block->Tag != 0)
        {






            continue;
        }


        StartAddress = ALIGN_UP_POINTER_BY(Block->Data, PAGE_SIZE);


        while (Block->Tag == 0) Block = Block + Block->Size + 1;


        if (Block->Size == 0)
        {

            EndAddress = ALIGN_UP_POINTER_BY(Block->Data, PAGE_SIZE);
        }
        else
        {

            EndAddress = ALIGN_DOWN_POINTER_BY(Block->Data, PAGE_SIZE);
        }


        if (EndAddress > StartAddress)
        {

            FreePages = (PFN_COUNT)((EndAddress - StartAddress) / MM_PAGE_SIZE);
            AllFreePages += FreePages;


            MmMarkPagesInLookupTable(PageLookupTableAddress,
                                     (ULONG_PTR)StartAddress / MM_PAGE_SIZE,
                                     FreePages,
                                     LoaderFree);
        }


        if (Block->Size == 0) break;
    }

    TRACE("HeapRelease() done, freed %lu of %lu pages\n", AllFreePages, Heap->MaximumSize / MM_PAGE_SIZE);
}
