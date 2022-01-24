#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  PFREELDR_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  LoaderFirmwarePermanent ; 
 int /*<<< orphan*/  LoaderFree ; 
 int /*<<< orphan*/  LoaderSpecialMemory ; 
 int /*<<< orphan*/  MAX_BIOS_DESCRIPTORS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PcMapCount ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  PcMemoryMap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

PFREELDR_MEMORY_DESCRIPTOR
FUNC10(ULONG *MemoryMapSize)
{
    ULONG EntryCount;
    ULONG ExtendedMemorySizeAtOneMB;
    ULONG ExtendedMemorySizeAtSixteenMB;
    ULONG EbdaBase, EbdaSize;

    FUNC9("PcMemGetMemoryMap()\n");

    FUNC4();

    EntryCount = FUNC6(PcMemoryMap, MAX_BIOS_DESCRIPTORS);

    /* If the BIOS didn't provide a memory map, synthesize one */
    if (EntryCount == 0)
    {
        FUNC3(&ExtendedMemorySizeAtOneMB,
                                       &ExtendedMemorySizeAtSixteenMB);

        /* Conventional memory */
        FUNC1(PcMemoryMap,
                            MAX_BIOS_DESCRIPTORS,
                            0,
                            FUNC7() * 1024 / PAGE_SIZE,
                            LoaderFree);

        /* Extended memory */
        PcMapCount = FUNC1(PcMemoryMap,
                                         MAX_BIOS_DESCRIPTORS,
                                         1024 * 1024 / PAGE_SIZE,
                                         ExtendedMemorySizeAtOneMB * 1024 / PAGE_SIZE,
                                         LoaderFree);

        if (ExtendedMemorySizeAtSixteenMB != 0)
        {
            /* Extended memory at 16MB */
            PcMapCount = FUNC1(PcMemoryMap,
                                             MAX_BIOS_DESCRIPTORS,
                                             0x1000000 / PAGE_SIZE,
                                             ExtendedMemorySizeAtSixteenMB * 64 * 1024 / PAGE_SIZE,
                                             LoaderFree);
        }

        /* Check if we have an EBDA and get it's location */
        if (FUNC2(&EbdaBase, &EbdaSize))
        {
            /* Add the descriptor */
            PcMapCount = FUNC1(PcMemoryMap,
                                             MAX_BIOS_DESCRIPTORS,
                                             (EbdaBase / PAGE_SIZE),
                                             FUNC0(EbdaBase, EbdaSize),
                                             LoaderFirmwarePermanent);
        }
    }

    /* Setup some protected ranges */
    FUNC8(PcMemoryMap, 0x000000, 0x01000, LoaderFirmwarePermanent); // Realmode IVT / BDA
    FUNC8(PcMemoryMap, 0x0A0000, 0x50000, LoaderFirmwarePermanent); // Video memory
    FUNC8(PcMemoryMap, 0x0F0000, 0x10000, LoaderSpecialMemory); // ROM
    FUNC8(PcMemoryMap, 0xFFF000, 0x01000, LoaderSpecialMemory); // unusable memory (do we really need this?)

    *MemoryMapSize = FUNC5(PcMemoryMap);
    return PcMemoryMap;
}