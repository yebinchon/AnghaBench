
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG_PTR ;
struct TYPE_5__ {int MaximumSize; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PHEAP ;
typedef int PFN_COUNT ;


 int LoaderFirmwareTemporary ;
 int MM_PAGE_SIZE ;
 int MmMarkPagesInLookupTable (int ,int,int ,int ) ;
 int PageLookupTableAddress ;
 int RtlFillMemory (TYPE_1__*,int,int) ;

VOID
FrLdrHeapDestroy(
    PVOID HeapHandle)
{
    PHEAP Heap = HeapHandle;


    MmMarkPagesInLookupTable(PageLookupTableAddress,
                             (ULONG_PTR)Heap / MM_PAGE_SIZE,
                             (PFN_COUNT)(Heap->MaximumSize / MM_PAGE_SIZE),
                             LoaderFirmwareTemporary);





}
