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
struct TYPE_4__ {scalar_t__ idCommand; } ;
struct TYPE_5__ {TYPE_1__ btn; int /*<<< orphan*/  text; } ;
typedef  TYPE_2__* PCUSTOMBUTTON ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_AVAILBTN_LBOX ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_INSERTSTRING ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(HWND hwnd, PCUSTOMBUTTON btnInfoNew)
{
    int i;
    int count;
    PCUSTOMBUTTON btnInfo;
    HWND hwndAvail = FUNC0(hwnd, IDC_AVAILBTN_LBOX);

    FUNC2("button %s, idCommand %d\n", FUNC3(btnInfoNew->text), btnInfoNew->btn.idCommand);

    count = FUNC1(hwndAvail, LB_GETCOUNT, 0, 0);

    /* position 0 is always separator */
    for (i = 1; i < count; i++)
    {
        btnInfo = (PCUSTOMBUTTON)FUNC1(hwndAvail, LB_GETITEMDATA, i, 0);
        if (btnInfoNew->btn.idCommand < btnInfo->btn.idCommand)
        {
            i = FUNC1(hwndAvail, LB_INSERTSTRING, i, 0);
            FUNC1(hwndAvail, LB_SETITEMDATA, i, (LPARAM)btnInfoNew);
            return;
        }
    }
    /* id higher than all others add to end */
    i = FUNC1(hwndAvail, LB_ADDSTRING, 0, 0);
    FUNC1(hwndAvail, LB_SETITEMDATA, i, (LPARAM)btnInfoNew);
}