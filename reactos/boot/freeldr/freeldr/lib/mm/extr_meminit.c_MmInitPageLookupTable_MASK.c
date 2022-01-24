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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int BasePage; int PageCount; int /*<<< orphan*/  MemoryType; } ;
typedef  scalar_t__ PVOID ;
typedef  int PFN_NUMBER ;
typedef  int /*<<< orphan*/  PAGE_LOOKUP_TABLE_ITEM ;
typedef  TYPE_1__ FREELDR_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  LoaderFirmwarePermanent ; 
 int /*<<< orphan*/  LoaderFirmwareTemporary ; 
 int /*<<< orphan*/  MM_PAGE_SIZE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MmLowestPhysicalPage ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

VOID FUNC6(PVOID PageLookupTable, PFN_NUMBER TotalPageCount)
{
    const FREELDR_MEMORY_DESCRIPTOR* MemoryDescriptor = NULL;
    PFN_NUMBER PageLookupTableStartPage;
    PFN_NUMBER PageLookupTablePageCount;

    FUNC5("MmInitPageLookupTable()\n");

    // Mark every page as allocated initially
    // We will go through and mark pages again according to the memory map
    // But this will mark any holes not described in the map as allocated
    FUNC3(PageLookupTable, MmLowestPhysicalPage, TotalPageCount, LoaderFirmwarePermanent);

    // Parse the whole memory map
    while ((MemoryDescriptor = FUNC0(MemoryDescriptor)) != NULL)
    {
        // Mark used pages in the lookup table

        if (MemoryDescriptor->BasePage + MemoryDescriptor->PageCount <= TotalPageCount)
        {
            FUNC5("Marking pages 0x%lx-0x%lx as type %s\n",
                  MemoryDescriptor->BasePage,
                  MemoryDescriptor->BasePage + MemoryDescriptor->PageCount,
                  FUNC2(MemoryDescriptor->MemoryType));
            FUNC3(PageLookupTable,
                                     MemoryDescriptor->BasePage,
                                     MemoryDescriptor->PageCount,
                                     MemoryDescriptor->MemoryType);
        }
        else
            FUNC5("Ignoring pages 0x%lx-0x%lx (%s)\n",
                  MemoryDescriptor->BasePage,
                  MemoryDescriptor->BasePage + MemoryDescriptor->PageCount,
                  FUNC2(MemoryDescriptor->MemoryType));
    }

    // Mark the pages that the lookup table occupies as reserved
    PageLookupTableStartPage = FUNC1(PageLookupTable);
    PageLookupTablePageCount = FUNC1((PVOID)((ULONG_PTR)PageLookupTable + FUNC4(TotalPageCount * sizeof(PAGE_LOOKUP_TABLE_ITEM), MM_PAGE_SIZE))) - PageLookupTableStartPage;
    FUNC5("Marking the page lookup table pages as reserved StartPage: 0x%x PageCount: 0x%x\n", PageLookupTableStartPage, PageLookupTablePageCount);
    FUNC3(PageLookupTable, PageLookupTableStartPage, PageLookupTablePageCount, LoaderFirmwareTemporary);
}