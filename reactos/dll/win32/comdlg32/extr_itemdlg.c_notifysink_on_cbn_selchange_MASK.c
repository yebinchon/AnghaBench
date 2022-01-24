#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ customctrl ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  FileDialogImpl ;

/* Variables and functions */
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC5(FileDialogImpl *This, HWND hwnd, WPARAM wparam)
{
    customctrl *ctrl = FUNC4(This, FUNC0(wparam));
    FUNC2("%p, %p (%lx)\n", This, ctrl, wparam);

    if(ctrl)
    {
        UINT index = FUNC1(ctrl->hwnd, CB_GETCURSEL, 0, 0);
        UINT selid = FUNC1(ctrl->hwnd, CB_GETITEMDATA, index, 0);

        FUNC3(This, ctrl->id, selid);
    }
    return TRUE;
}