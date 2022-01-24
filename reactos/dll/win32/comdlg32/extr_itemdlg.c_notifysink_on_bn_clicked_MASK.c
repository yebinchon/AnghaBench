#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  id; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ customctrl ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  FileDialogImpl ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 scalar_t__ BST_CHECKED ; 
 scalar_t__ IDLG_CCTRL_CHECKBUTTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC6(FileDialogImpl *This, HWND hwnd, WPARAM wparam)
{
    customctrl *ctrl = FUNC5(This, FUNC0(wparam));

    FUNC2("%p, %lx\n", This, wparam);

    if(ctrl)
    {
        if(ctrl->type == IDLG_CCTRL_CHECKBUTTON)
        {
            BOOL checked = (FUNC1(ctrl->hwnd, BM_GETCHECK, 0, 0) == BST_CHECKED);
            FUNC4(This, ctrl->id, checked);
        }
        else
            FUNC3(This, ctrl->id);
    }

    return TRUE;
}