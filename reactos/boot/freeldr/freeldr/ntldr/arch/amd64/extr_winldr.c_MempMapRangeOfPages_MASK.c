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
typedef  scalar_t__ ULONG64 ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ PFN_NUMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 

__attribute__((used)) static
PFN_NUMBER
FUNC2(ULONG64 VirtualAddress, ULONG64 PhysicalAddress, PFN_NUMBER cPages)
{
    PFN_NUMBER i;

    for (i = 0; i < cPages; i++)
    {
        if (!FUNC1(VirtualAddress, PhysicalAddress))
        {
            FUNC0("Failed to map page %ld from %p to %p\n",
                    i, (PVOID)VirtualAddress, (PVOID)PhysicalAddress);
            return i;
        }
        VirtualAddress += PAGE_SIZE;
        PhysicalAddress += PAGE_SIZE;
    }
    return i;
}