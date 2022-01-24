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
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ExtraHandles ; 
 scalar_t__ STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * StdStreams ; 

VOID FUNC3(UINT Number, HANDLE Handle)
{
    if (Number < 3)
    {
        FUNC1(StdStreams[Number], Handle);
        /* Synchronize the associated Win32 handle */
        FUNC2(STD_INPUT_HANDLE - Number, Handle);
    }
    else if (Number < FUNC0(ExtraHandles) + 3)
        ExtraHandles[Number - 3] = Handle;
}