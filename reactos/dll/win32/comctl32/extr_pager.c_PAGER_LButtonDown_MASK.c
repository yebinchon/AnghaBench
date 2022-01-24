#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ TLbtnState; scalar_t__ BRbtnState; int dwStyle; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_7__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ PAGER_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  INITIAL_DELAY ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  PGB_BOTTOMORRIGHT 129 
#define  PGB_TOPORLEFT 128 
 scalar_t__ PGF_DEPRESSED ; 
 int /*<<< orphan*/  PGF_SCROLLDOWN ; 
 int /*<<< orphan*/  PGF_SCROLLLEFT ; 
 int /*<<< orphan*/  PGF_SCROLLRIGHT ; 
 int /*<<< orphan*/  PGF_SCROLLUP ; 
 int PGS_HORZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMERID1 ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  WM_NCPAINT ; 

__attribute__((used)) static LRESULT
FUNC5 (PAGER_INFO* infoPtr, INT keys, INT x, INT y)
{
    BOOL repaintBtns = FALSE;
    POINT pt;
    INT hit;

    pt.x = x;
    pt.y = y;

    FUNC4("[%p] at (%d,%d)\n", infoPtr->hwndSelf, x, y);

    hit = FUNC0(infoPtr, &pt);

    /* put btn in DEPRESSED state */
    if (hit == PGB_TOPORLEFT)
    {
        repaintBtns = infoPtr->TLbtnState != PGF_DEPRESSED;
        infoPtr->TLbtnState = PGF_DEPRESSED;
        FUNC3(infoPtr->hwndSelf, TIMERID1, INITIAL_DELAY, 0);
    }
    else if (hit == PGB_BOTTOMORRIGHT)
    {
        repaintBtns = infoPtr->BRbtnState != PGF_DEPRESSED;
        infoPtr->BRbtnState = PGF_DEPRESSED;
        FUNC3(infoPtr->hwndSelf, TIMERID1, INITIAL_DELAY, 0);
    }

    if (repaintBtns)
        FUNC2(infoPtr->hwndSelf, WM_NCPAINT, 0, 0);

    switch(hit)
    {
    case PGB_TOPORLEFT:
        if (infoPtr->dwStyle & PGS_HORZ)
        {
            FUNC4("[%p] PGF_SCROLLLEFT\n", infoPtr->hwndSelf);
            FUNC1(infoPtr, PGF_SCROLLLEFT);
        }
        else
        {
            FUNC4("[%p] PGF_SCROLLUP\n", infoPtr->hwndSelf);
            FUNC1(infoPtr, PGF_SCROLLUP);
        }
        break;
    case PGB_BOTTOMORRIGHT:
        if (infoPtr->dwStyle & PGS_HORZ)
        {
            FUNC4("[%p] PGF_SCROLLRIGHT\n", infoPtr->hwndSelf);
            FUNC1(infoPtr, PGF_SCROLLRIGHT);
        }
        else
        {
            FUNC4("[%p] PGF_SCROLLDOWN\n", infoPtr->hwndSelf);
            FUNC1(infoPtr, PGF_SCROLLDOWN);
        }
        break;
    default:
        break;
    }

    return 0;
}