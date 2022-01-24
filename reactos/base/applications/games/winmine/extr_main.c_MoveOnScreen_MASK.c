#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mi ;
struct TYPE_7__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {int cbSize; TYPE_1__ rcWork; } ;
struct TYPE_8__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ MONITORINFO ;
typedef  int /*<<< orphan*/  HMONITOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  MONITOR_DEFAULTTONEAREST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(RECT* rect)
{
    HMONITOR hMonitor;
    MONITORINFO mi;

    /* find the nearest monitor ... */
    hMonitor = FUNC1(rect, MONITOR_DEFAULTTONEAREST);

    /* ... and move it into the work area (ie excluding task bar)*/
    mi.cbSize = sizeof(mi);
    FUNC0(hMonitor, &mi);

    FUNC2(&rect->left, &rect->right, mi.rcWork.left, mi.rcWork.right);
    FUNC2(&rect->top, &rect->bottom, mi.rcWork.top, mi.rcWork.bottom);
}