#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  (* GetCurrentMode ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  hwndDlg; int /*<<< orphan*/  lpDevModeOnInit; int /*<<< orphan*/  lpSelDevMode; TYPE_3__* DeskExtInterface; } ;
typedef  TYPE_1__* PDESKMONITOR ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ DISP_CHANGE_RESTART ; 
 scalar_t__ DISP_CHANGE_SUCCESSFUL ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ PSNRET_INVALID_NOCHANGEPAGE ; 
 scalar_t__ PSNRET_NOERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONG
FUNC5(PDESKMONITOR This)
{
    LONG lChangeRet;

    if (This->DeskExtInterface != NULL)
    {
        /* Change the display settings through desk.cpl */
        lChangeRet = FUNC0(This->DeskExtInterface,
                                                   This->hwndDlg);
        if (lChangeRet == DISP_CHANGE_SUCCESSFUL)
        {
            /* Save the new mode */
            This->lpDevModeOnInit = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);
            This->lpSelDevMode = This->lpDevModeOnInit;
            return PSNRET_NOERROR;
        }
        else if (lChangeRet == DISP_CHANGE_RESTART)
        {
            /* Notify desk.cpl that the user needs to reboot */
            FUNC3(FUNC1(This->hwndDlg));
            return PSNRET_NOERROR;
        }
    }

    FUNC2(This);

    return PSNRET_INVALID_NOCHANGEPAGE;
}