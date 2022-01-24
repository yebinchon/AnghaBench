#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ selection_start; scalar_t__ selection_end; int style; int flags; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_11__ {int x; int y; } ;
struct TYPE_10__ {int left; int right; int top; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  void* INT ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_3__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int EF_FOCUSED ; 
 int ES_PASSWORD ; 
 int ES_READONLY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int MF_BYPOSITION ; 
 int MF_ENABLED ; 
 int MF_GRAYED ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int TPM_LEFTALIGN ; 
 int TPM_NONOTIFY ; 
 int TPM_RETURNCMD ; 
 int TPM_RIGHTBUTTON ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC14(EDITSTATE *es, INT x, INT y)
{
    HMENU menu = FUNC9(FUNC6("user32.dll"), "EDITMENU");
    HMENU popup = FUNC7(menu, 0);
    UINT start = es->selection_start;
    UINT end = es->selection_end;
    UINT cmd;
    POINT pt;

    FUNC10(start, end);

    /* undo */
    FUNC4(popup, 0, MF_BYPOSITION | (FUNC3(es) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
    /* cut */
    FUNC4(popup, 2, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
    /* copy */
    FUNC4(popup, 3, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) ? MF_ENABLED : MF_GRAYED));
    /* paste */
    FUNC4(popup, 4, MF_BYPOSITION | (FUNC8(CF_UNICODETEXT) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
    /* delete */
    FUNC4(popup, 5, MF_BYPOSITION | ((end - start) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
    /* select all */
    FUNC4(popup, 7, MF_BYPOSITION | (start || (end != FUNC13(es)) ? MF_ENABLED : MF_GRAYED));

    pt.x = x;
    pt.y = y;

    if (pt.x == -1 && pt.y == -1) /* passed via VK_APPS press/release */
    {
        RECT rc;

        /* Windows places the menu at the edit's center in this case */
        FUNC5(es->hwndSelf, &rc);
        pt.x = rc.left + (rc.right - rc.left) / 2;
        pt.y = rc.top + (rc.bottom - rc.top) / 2;
        FUNC0(es->hwndSelf, &pt);
    }

    if (!(es->flags & EF_FOCUSED))
        FUNC11(es->hwndSelf);

    cmd = FUNC12(popup, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD | TPM_NONOTIFY,
            pt.x, pt.y, 0, es->hwndSelf, NULL);

    if (cmd)
        FUNC2(es, cmd);

    FUNC1(menu);
}