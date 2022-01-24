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
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PFREELDR_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 int AvailableMemoryMb ; 
 scalar_t__ FrameBuffer ; 
 scalar_t__ FrameBufferSize ; 
 int /*<<< orphan*/  LoaderFirmwarePermanent ; 
 int /*<<< orphan*/  LoaderFree ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  XboxMemoryMap ; 

PFREELDR_MEMORY_DESCRIPTOR
FUNC4(ULONG *MemoryMapSize)
{
    FUNC3("XboxMemGetMemoryMap()\n");
    /* FIXME: Obtain memory map via multiboot spec */

    /* Synthesize memory map */

    /* Available RAM block */
    FUNC2(XboxMemoryMap,
              0,
              AvailableMemoryMb * 1024 * 1024,
              LoaderFree);

    if (FrameBufferSize != 0)
    {
        /* Video memory */
        FUNC1(XboxMemoryMap,
                      (ULONG_PTR)FrameBuffer,
                      FrameBufferSize,
                      LoaderFirmwarePermanent,
                      "Video memory");
    }

    *MemoryMapSize = FUNC0(XboxMemoryMap);
    return XboxMemoryMap;
}