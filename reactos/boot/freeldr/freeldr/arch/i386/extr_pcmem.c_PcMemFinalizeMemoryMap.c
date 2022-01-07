
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_4__ {int BasePage; scalar_t__ MemoryType; int PageCount; } ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PFREELDR_MEMORY_DESCRIPTOR ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,int) ;
 int ASSERT (int) ;
 scalar_t__ DiskReadBuffer ;
 scalar_t__ DiskReadBufferSize ;
 int FREELDR_BASE ;
 scalar_t__ FrLdrImageSize ;
 int LoaderFirmwareTemporary ;
 scalar_t__ LoaderFree ;
 int LoaderLoadedProgram ;
 int LoaderOsloaderStack ;
 int MAX_DISKREADBUFFER_SIZE ;
 int MmGetSystemMemoryMapTypeString (scalar_t__) ;
 int PAGE_SIZE ;
 size_t PcMapCount ;
 int ReserveMemory (TYPE_1__*,int,scalar_t__,int ,char*) ;
 scalar_t__ STACKADDR ;
 int STACKLOW ;
 int TRACE (char*,...) ;
 scalar_t__ min (int,int ) ;

ULONG
PcMemFinalizeMemoryMap(
    PFREELDR_MEMORY_DESCRIPTOR MemoryMap)
{
    ULONG i;


    ReserveMemory(MemoryMap, 0x1000, STACKLOW - 0x1000, LoaderFirmwareTemporary, "BIOS area");
    ReserveMemory(MemoryMap, STACKLOW, STACKADDR - STACKLOW, LoaderOsloaderStack, "FreeLdr stack");
    ReserveMemory(MemoryMap, FREELDR_BASE, FrLdrImageSize, LoaderLoadedProgram, "FreeLdr image");


    DiskReadBuffer = (PUCHAR)ALIGN_UP_BY(FREELDR_BASE + FrLdrImageSize, PAGE_SIZE);
    DiskReadBufferSize = PAGE_SIZE;


    for (i = 0; i < PcMapCount; i++)
    {
        if ((MemoryMap[i].BasePage > (FREELDR_BASE / PAGE_SIZE)) &&
            (MemoryMap[i].MemoryType == LoaderFree))
        {

            DiskReadBuffer = (PVOID)(MemoryMap[i].BasePage * PAGE_SIZE);
            DiskReadBufferSize = min(MemoryMap[i].PageCount * PAGE_SIZE,
                                     MAX_DISKREADBUFFER_SIZE);
            break;
        }
    }

    TRACE("DiskReadBuffer=0x%p, DiskReadBufferSize=0x%lx\n",
          DiskReadBuffer, DiskReadBufferSize);

    ASSERT(DiskReadBufferSize > 0);


    ReserveMemory(MemoryMap,
                  (ULONG_PTR)DiskReadBuffer,
                  DiskReadBufferSize,
                  LoaderFirmwareTemporary,
                  "Disk read buffer");

    TRACE("Dumping resulting memory map:\n");
    for (i = 0; i < PcMapCount; i++)
    {
        TRACE("BasePage=0x%lx, PageCount=0x%lx, Type=%s\n",
              MemoryMap[i].BasePage,
              MemoryMap[i].PageCount,
              MmGetSystemMemoryMapTypeString(MemoryMap[i].MemoryType));
    }
    return PcMapCount;
}
