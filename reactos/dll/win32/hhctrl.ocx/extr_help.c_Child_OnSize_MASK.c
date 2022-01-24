#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hwndNavigation; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwndTabCtrl; TYPE_1__ WinType; } ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HWND ;
typedef  TYPE_3__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWP_NOMOVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAB_CONTENTS ; 
 int /*<<< orphan*/  TAB_INDEX ; 
 scalar_t__ TAB_RIGHT_PADDING ; 
 int /*<<< orphan*/  TAB_SEARCH ; 
 scalar_t__ TAB_TOP_PADDING ; 

__attribute__((used)) static LRESULT FUNC4(HWND hwnd)
{
    HHInfo *info = (HHInfo*)FUNC1(hwnd, 0);
    RECT rect;

    if(!info || hwnd != info->WinType.hwndNavigation)
        return 0;

    FUNC0(hwnd, &rect);
    FUNC3(info->hwndTabCtrl, HWND_TOP, 0, 0,
                 rect.right - TAB_RIGHT_PADDING,
                 rect.bottom - TAB_TOP_PADDING, SWP_NOMOVE);

    FUNC2(info, TAB_CONTENTS);
    FUNC2(info, TAB_INDEX);
    FUNC2(info, TAB_SEARCH);
    return 0;
}