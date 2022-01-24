#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
struct TYPE_5__ {int fStatus; int dwStyle; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int RBS_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int SELF_RESIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC3 (REBAR_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    FUNC2("wParam=%lx, lParam=%lx\n", wParam, lParam);

    /* avoid _Layout resize recursion (but it shouldn't be infinite and it seems Windows does recurse) */
    if (infoPtr->fStatus & SELF_RESIZE) {
	infoPtr->fStatus &= ~SELF_RESIZE;
	FUNC2("SELF_RESIZE was set, reset, fStatus=%08x lparam=%08lx\n",
	      infoPtr->fStatus, lParam);
	return 0;
    }
    
    if (infoPtr->dwStyle & RBS_AUTOSIZE)
        FUNC0(infoPtr, TRUE);
    else
        FUNC1(infoPtr);

    return 0;
}