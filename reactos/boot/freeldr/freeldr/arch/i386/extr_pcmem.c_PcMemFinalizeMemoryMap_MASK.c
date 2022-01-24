#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_4__ {int BasePage; scalar_t__ MemoryType; int PageCount; } ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_1__* PFREELDR_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DiskReadBuffer ; 
 scalar_t__ DiskReadBufferSize ; 
 int FREELDR_BASE ; 
 scalar_t__ FrLdrImageSize ; 
 int /*<<< orphan*/  LoaderFirmwareTemporary ; 
 scalar_t__ LoaderFree ; 
 int /*<<< orphan*/  LoaderLoadedProgram ; 
 int /*<<< orphan*/  LoaderOsloaderStack ; 
 int /*<<< orphan*/  MAX_DISKREADBUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int PAGE_SIZE ; 
 size_t PcMapCount ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ STACKADDR ; 
 int STACKLOW ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

ULONG
FUNC6(
    PFREELDR_MEMORY_DESCRIPTOR MemoryMap)
{
    ULONG i;

    /* Reserve some static ranges for freeldr */
    FUNC3(MemoryMap, 0x1000, STACKLOW - 0x1000, LoaderFirmwareTemporary, "BIOS area");
    FUNC3(MemoryMap, STACKLOW, STACKADDR - STACKLOW, LoaderOsloaderStack, "FreeLdr stack");
    FUNC3(MemoryMap, FREELDR_BASE, FrLdrImageSize, LoaderLoadedProgram, "FreeLdr image");

    /* Default to 1 page above freeldr for the disk read buffer */
    DiskReadBuffer = (PUCHAR)FUNC0(FREELDR_BASE + FrLdrImageSize, PAGE_SIZE);
    DiskReadBufferSize = PAGE_SIZE;

    /* Scan for free range above freeldr image */
    for (i = 0; i < PcMapCount; i++)
    {
        if ((MemoryMap[i].BasePage > (FREELDR_BASE / PAGE_SIZE)) &&
            (MemoryMap[i].MemoryType == LoaderFree))
        {
            /* Use this range for the disk read buffer */
            DiskReadBuffer = (PVOID)(MemoryMap[i].BasePage * PAGE_SIZE);
            DiskReadBufferSize = FUNC5(MemoryMap[i].PageCount * PAGE_SIZE,
                                     MAX_DISKREADBUFFER_SIZE);
            break;
        }
    }

    FUNC4("DiskReadBuffer=0x%p, DiskReadBufferSize=0x%lx\n",
          DiskReadBuffer, DiskReadBufferSize);

    FUNC1(DiskReadBufferSize > 0);

    /* Now reserve the range for the disk read buffer */
    FUNC3(MemoryMap,
                  (ULONG_PTR)DiskReadBuffer,
                  DiskReadBufferSize,
                  LoaderFirmwareTemporary,
                  "Disk read buffer");

    FUNC4("Dumping resulting memory map:\n");
    for (i = 0; i < PcMapCount; i++)
    {
        FUNC4("BasePage=0x%lx, PageCount=0x%lx, Type=%s\n",
              MemoryMap[i].BasePage,
              MemoryMap[i].PageCount,
              FUNC2(MemoryMap[i].MemoryType));
    }
    return PcMapCount;
}