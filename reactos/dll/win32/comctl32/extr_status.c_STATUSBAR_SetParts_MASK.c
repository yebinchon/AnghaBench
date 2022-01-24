#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int style; scalar_t__ x; struct TYPE_11__* text; } ;
struct TYPE_10__ {size_t numParts; int /*<<< orphan*/  Self; scalar_t__ hwndToolTip; TYPE_3__* parts; } ;
struct TYPE_9__ {int cbSize; size_t uId; int /*<<< orphan*/ * lpszText; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOW ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  TYPE_3__ STATUSWINDOWPART ;
typedef  scalar_t__* LPINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SBT_OWNERDRAW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TTM_ADDTOOLW ; 
 int /*<<< orphan*/  TTM_DELTOOLW ; 
 int /*<<< orphan*/  TTM_GETTOOLCOUNT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static BOOL
FUNC7 (STATUS_INFO *infoPtr, INT count, LPINT parts)
{
    STATUSWINDOWPART *tmp;
    INT i, oldNumParts;

    FUNC5("(%d,%p)\n", count, parts);

    if(!count) return FALSE;

    oldNumParts = infoPtr->numParts;
    infoPtr->numParts = count;
    if (oldNumParts > infoPtr->numParts) {
	for (i = infoPtr->numParts ; i < oldNumParts; i++) {
	    if (!(infoPtr->parts[i].style & SBT_OWNERDRAW))
		FUNC1 (infoPtr->parts[i].text);
	}
    } else if (oldNumParts < infoPtr->numParts) {
	tmp = FUNC0 (sizeof(STATUSWINDOWPART) * infoPtr->numParts);
	if (!tmp) return FALSE;
	for (i = 0; i < oldNumParts; i++) {
	    tmp[i] = infoPtr->parts[i];
	}
        FUNC1 (infoPtr->parts);
	infoPtr->parts = tmp;
    }
    if (oldNumParts == infoPtr->numParts) {
	for (i=0; i < oldNumParts; i++)
	    if (infoPtr->parts[i].x != parts[i])
		break;
	if (i==oldNumParts) /* Unchanged? no need to redraw! */
	    return TRUE;
    }

    for (i = 0; i < infoPtr->numParts; i++)
	infoPtr->parts[i].x = parts[i];

    if (infoPtr->hwndToolTip) {
	INT nTipCount;
	TTTOOLINFOW ti;
	WCHAR wEmpty = 0;

	FUNC6 (&ti, sizeof(TTTOOLINFOW));
	ti.cbSize = sizeof(TTTOOLINFOW);
	ti.hwnd = infoPtr->Self;
	ti.lpszText = &wEmpty;

	nTipCount = FUNC4 (infoPtr->hwndToolTip, TTM_GETTOOLCOUNT, 0, 0);
	if (nTipCount < infoPtr->numParts) {
	    /* add tools */
	    for (i = nTipCount; i < infoPtr->numParts; i++) {
		FUNC5("add tool %d\n", i);
		ti.uId = i;
		FUNC4 (infoPtr->hwndToolTip, TTM_ADDTOOLW,
				0, (LPARAM)&ti);
	    }
	}
	else if (nTipCount > infoPtr->numParts) {
	    /* delete tools */
	    for (i = nTipCount - 1; i >= infoPtr->numParts; i--) {
		FUNC5("delete tool %d\n", i);
		ti.uId = i;
		FUNC4 (infoPtr->hwndToolTip, TTM_DELTOOLW,
				0, (LPARAM)&ti);
	    }
	}
    }
    FUNC3 (infoPtr);
    FUNC2(infoPtr->Self, NULL, FALSE);
    return TRUE;
}