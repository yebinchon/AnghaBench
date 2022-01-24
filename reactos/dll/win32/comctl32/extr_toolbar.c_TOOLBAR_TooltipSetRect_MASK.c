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
typedef  int /*<<< orphan*/  ti ;
struct TYPE_9__ {int fsStyle; int /*<<< orphan*/  rect; int /*<<< orphan*/  idCommand; } ;
struct TYPE_8__ {scalar_t__ hwndToolTip; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_7__ {int cbSize; int /*<<< orphan*/  rect; int /*<<< orphan*/  uId; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  TYPE_2__ TOOLBAR_INFO ;
typedef  TYPE_3__ TBUTTON_INFO ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int BTNS_SEP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTM_NEWTOOLRECTW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(const TOOLBAR_INFO *infoPtr, const TBUTTON_INFO *button)
{
    /* Set the toolTip only for non-hidden, non-separator button */
    if (infoPtr->hwndToolTip && !(button->fsStyle & BTNS_SEP))
    {
        TTTOOLINFOW ti;

        FUNC1(&ti, sizeof(ti));
        ti.cbSize = sizeof(ti);
        ti.hwnd = infoPtr->hwndSelf;
        ti.uId = button->idCommand;
        ti.rect = button->rect;
        FUNC0(infoPtr->hwndToolTip, TTM_NEWTOOLRECTW, 0, (LPARAM)&ti);
    }
}