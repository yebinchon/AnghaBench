#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dwStyle; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ REBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int WS_BORDER ; 
 void* FUNC3 (scalar_t__,scalar_t__) ; 
 void* FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static inline LRESULT
FUNC6 (const REBAR_INFO *infoPtr, RECT *rect)
{
    HTHEME theme;

    if (infoPtr->dwStyle & WS_BORDER) {
        rect->left   = FUNC4(rect->left + FUNC0(SM_CXEDGE), rect->right);
        rect->right  = FUNC3(rect->right - FUNC0(SM_CXEDGE), rect->left);
        rect->top    = FUNC4(rect->top + FUNC0(SM_CYEDGE), rect->bottom);
        rect->bottom = FUNC3(rect->bottom - FUNC0(SM_CYEDGE), rect->top);
    }
    else if ((theme = FUNC1 (infoPtr->hwndSelf)))
    {
        /* FIXME: should use GetThemeInt */
#ifdef __REACTOS__
        rect->top = (rect->top + 1 < rect->bottom) ? rect->top : rect->bottom;
#else
        rect->top = FUNC4(rect->top + 1, rect->bottom);
#endif
    }
    FUNC2("new client=(%s)\n", FUNC5(rect));
    return 0;
}