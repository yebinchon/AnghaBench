#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  hMainWnd; scalar_t__ uDisplayFormat; scalar_t__ uCheckedItem; int /*<<< orphan*/  hMenu; } ;
struct TYPE_7__ {scalar_t__ iWheelCarryoverY; scalar_t__ iWheelCarryoverX; scalar_t__ CurrentY; scalar_t__ CurrentX; } ;
struct TYPE_6__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;

/* Variables and functions */
 scalar_t__ CMD_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 TYPE_4__ Globals ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_UNCHECKED ; 
 TYPE_2__ Scrollstate ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(UINT uFormat)
{
    RECT rc;

    FUNC0(Globals.hMenu, Globals.uCheckedItem, MF_BYCOMMAND | MF_UNCHECKED);
    Globals.uCheckedItem = uFormat + CMD_AUTOMATIC;
    FUNC0(Globals.hMenu, Globals.uCheckedItem, MF_BYCOMMAND | MF_CHECKED);

    if (uFormat == 0)
    {
        Globals.uDisplayFormat = FUNC1();
    }
    else
    {
        Globals.uDisplayFormat = uFormat;
    }

    FUNC2(Globals.uDisplayFormat, &rc);
    Scrollstate.CurrentX = Scrollstate.CurrentY = 0;
    Scrollstate.iWheelCarryoverX = Scrollstate.iWheelCarryoverY = 0;
    FUNC4(Globals.hMainWnd, rc.right, rc.bottom, &Scrollstate);

    FUNC3(Globals.hMainWnd, NULL, TRUE);
}