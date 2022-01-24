#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  segment; } ;
struct TYPE_5__ {TYPE_1__ EntryPointSP; } ;
typedef  int /*<<< orphan*/  PXENV_STATUS ;
typedef  scalar_t__ PXENV_EXIT ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_2__* PPXE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ PXENV_EXIT_SUCCESS ; 
 int /*<<< orphan*/  PXENV_STATUS_SUCCESS ; 
 int /*<<< orphan*/  PXENV_TFTP_READ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC5(UINT16 Service, PVOID Parameter)
{
    PPXE pxe;
    PXENV_EXIT exit;

    pxe = FUNC1();
    if (!pxe)
        return FALSE;

    if (Service != PXENV_TFTP_READ)
    {
        // HACK: this delay shouldn't be necessary
        FUNC2(100 * 1000); // 100 ms
        FUNC4("PxeCall(0x%x, %p)\n", Service, Parameter);
    }

    exit = FUNC3(pxe->EntryPointSP.segment, pxe->EntryPointSP.offset, Service, Parameter);
    if (exit != PXENV_EXIT_SUCCESS)
    {
        FUNC0("PxeCall(0x%x, %p) failed with exit=%d status=0x%x\n",
                Service, Parameter, exit, *(PXENV_STATUS*)Parameter);
        return FALSE;
    }
    if (*(PXENV_STATUS*)Parameter != PXENV_STATUS_SUCCESS)
    {
        FUNC0("PxeCall(0x%x, %p) succeeded, but returned error status 0x%x\n",
                Service, Parameter, *(PXENV_STATUS*)Parameter);
        return FALSE;
    }
    return TRUE;
}