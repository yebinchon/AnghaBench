#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secdlg_data ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int code; int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_4__ {int uNewState; TYPE_1__ hdr; int /*<<< orphan*/  iItem; } ;
typedef  TYPE_2__ NMLISTVIEW ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  INT_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LVIS_SELECTED ; 
#define  LVN_ITEMCHANGED 129 
#define  PSN_APPLY 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT_PTR FUNC2(secdlg_data *sd, WPARAM wparam, LPARAM lparam)
{
    NMLISTVIEW *nm;

    nm = (NMLISTVIEW *) lparam;
    switch (nm->hdr.code)
    {
        case LVN_ITEMCHANGED:
            FUNC0("LVN_ITEMCHANGED (0x%lx, 0x%lx) from %p with code: %d (item: %d, uNewState: %u)\n",
                    wparam, lparam, nm->hdr.hwndFrom, nm->hdr.code, nm->iItem, nm->uNewState);
            if ((nm->uNewState & LVIS_SELECTED) == LVIS_SELECTED) {
                FUNC1(sd, nm->iItem);
            }
            break;

        case PSN_APPLY:
            FUNC0("PSN_APPLY (0x%lx, 0x%lx) from %p with code: %d\n", wparam, lparam,
                    nm->hdr.hwndFrom, nm->hdr.code);
            break;

        default:
            FUNC0("WM_NOTIFY (0x%lx, 0x%lx) from %p with code: %d\n", wparam, lparam,
                    nm->hdr.hwndFrom, nm->hdr.code);

    }
    return FALSE;
}