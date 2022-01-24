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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {short iNavWidth; } ;
struct TYPE_6__ {TYPE_1__ WinType; } ;
struct TYPE_5__ {short x; short y; } ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ HHInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
    HHInfo *pHHInfo = (HHInfo *)FUNC0(hWnd, 0);
    POINT pt;

    pt.x = (short)FUNC3(lParam);
    pt.y = (short)FUNC1(lParam);

    /* update the window sizes */
    pHHInfo->WinType.iNavWidth += pt.x;
    FUNC2(hWnd);

    FUNC4();
}