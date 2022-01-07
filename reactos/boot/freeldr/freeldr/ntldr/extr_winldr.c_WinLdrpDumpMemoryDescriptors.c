
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
struct TYPE_10__ {TYPE_4__ MemoryDescriptorListHead; } ;
struct TYPE_8__ {TYPE_4__* Flink; } ;
struct TYPE_9__ {TYPE_1__ ListEntry; int MemoryType; int PageCount; int BasePage; } ;
typedef TYPE_2__* PMEMORY_ALLOCATION_DESCRIPTOR ;
typedef TYPE_3__* PLOADER_PARAMETER_BLOCK ;
typedef TYPE_4__* PLIST_ENTRY ;


 TYPE_2__* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int ListEntry ;
 int MEMORY_ALLOCATION_DESCRIPTOR ;
 int TRACE (char*,int ,int ,int ) ;

VOID
WinLdrpDumpMemoryDescriptors(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    PLIST_ENTRY NextMd;
    PMEMORY_ALLOCATION_DESCRIPTOR MemoryDescriptor;

    NextMd = LoaderBlock->MemoryDescriptorListHead.Flink;

    while (NextMd != &LoaderBlock->MemoryDescriptorListHead)
    {
        MemoryDescriptor = CONTAINING_RECORD(NextMd, MEMORY_ALLOCATION_DESCRIPTOR, ListEntry);

        TRACE("BP %08X PC %04X MT %d\n", MemoryDescriptor->BasePage,
            MemoryDescriptor->PageCount, MemoryDescriptor->MemoryType);

        NextMd = MemoryDescriptor->ListEntry.Flink;
    }
}
