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
struct TYPE_3__ {int /*<<< orphan*/  stateMask; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ LVITEMW ;
typedef  int /*<<< orphan*/  LISTVIEW_INFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LVIS_STATEIMAGEMASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(LISTVIEW_INFO *infoPtr, INT nItem)
{
    DWORD state = FUNC3(FUNC1(infoPtr, nItem, LVIS_STATEIMAGEMASK));
    if(state == 1 || state == 2)
    {
        LVITEMW lvitem;
        state ^= 3;
        lvitem.state = FUNC0(state);
        lvitem.stateMask = LVIS_STATEIMAGEMASK;
        FUNC2(infoPtr, nItem, &lvitem);
    }
}