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
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  PAGE_EXECUTE_READWRITE ; 
 int /*<<< orphan*/  STATUS_MEMORY_NOT_ALLOCATED ; 

__attribute__((used)) static BOOL FUNC4(PBYTE Address, PBYTE Data, SIZE_T Size)
{
    PVOID BaseAddress = Address;
    SIZE_T RegionSize = Size;
    ULONG OldProtection;
    NTSTATUS Status = FUNC2(FUNC1(), &BaseAddress, &RegionSize, PAGE_EXECUTE_READWRITE, &OldProtection);
    if (FUNC0(Status))
    {
        SIZE_T Bytes;
        Status = FUNC3(FUNC1(), Address, Data, Size, &Bytes);
        if (FUNC0(Status) && Bytes != Size)
            Status = STATUS_MEMORY_NOT_ALLOCATED;
        FUNC2(FUNC1(), &BaseAddress, &RegionSize, OldProtection, &OldProtection);
    }
    return FUNC0(Status);
}