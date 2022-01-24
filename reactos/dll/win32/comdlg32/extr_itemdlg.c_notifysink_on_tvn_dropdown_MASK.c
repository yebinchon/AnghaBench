#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  id; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_3__ customctrl ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  dlg_hwnd; } ;
struct TYPE_17__ {int /*<<< orphan*/  bottom; } ;
struct TYPE_16__ {int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_21__ {TYPE_2__ rcButton; TYPE_1__ hdr; } ;
struct TYPE_20__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {scalar_t__ dwData; } ;
typedef  TYPE_4__ TBBUTTON ;
typedef  TYPE_5__ POINT ;
typedef  TYPE_6__ NMTOOLBARW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_7__ FileDialogImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TBDDRET_DEFAULT ; 
 int /*<<< orphan*/  TB_GETBUTTON ; 
 int /*<<< orphan*/  TPM_RETURNCMD ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_7__*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC8(FileDialogImpl *This, LPARAM lparam)
{
    NMTOOLBARW *nmtb = (NMTOOLBARW*)lparam;
    customctrl *ctrl = FUNC7(This, FUNC1(nmtb->hdr.hwndFrom));
    POINT pt = { 0, nmtb->rcButton.bottom };
    TBBUTTON tbb;
    UINT idcmd;

    FUNC3("%p, %p (%lx)\n", This, ctrl, lparam);

    if(ctrl)
    {
        FUNC5(This,ctrl->id);

        FUNC2(ctrl->hwnd, TB_GETBUTTON, 0, (LPARAM)&tbb);
        FUNC0(ctrl->hwnd, &pt);
        idcmd = FUNC4((HMENU)tbb.dwData, TPM_RETURNCMD, pt.x, pt.y, 0, This->dlg_hwnd, NULL);
        if(idcmd)
            FUNC6(This, ctrl->id, idcmd);
    }

    return TBDDRET_DEFAULT;
}