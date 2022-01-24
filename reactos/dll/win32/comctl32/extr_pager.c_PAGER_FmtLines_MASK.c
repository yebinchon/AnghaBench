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
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  nHeight; int /*<<< orphan*/  nWidth; int /*<<< orphan*/  hwndChild; } ;
typedef  TYPE_1__ PAGER_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_FMTLINES ; 
 int SWP_FRAMECHANGED ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static LRESULT
FUNC2(const PAGER_INFO *infoPtr)
{
    /* initiate NCCalcSize to resize client wnd and get size */
    FUNC1(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
		 SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
		 SWP_NOZORDER | SWP_NOACTIVATE);

    FUNC1(infoPtr->hwndChild, 0,
		 0,0,infoPtr->nWidth,infoPtr->nHeight,
		 0);

    return FUNC0 (infoPtr->hwndSelf, EM_FMTLINES, 0, 0);
}