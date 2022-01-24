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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_5__ {int nTrackTool; int nTool; int uNumTools; int /*<<< orphan*/  hwndSelf; TYPE_1__* tools; scalar_t__ bTrackActive; } ;
struct TYPE_4__ {int uFlags; } ;
typedef  TYPE_2__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTTRANSPARENT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TTF_TRANSPARENT ; 
 int /*<<< orphan*/  WM_NCHITTEST ; 

__attribute__((used)) static LRESULT
FUNC2 (const TOOLTIPS_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    INT nTool = (infoPtr->bTrackActive) ? infoPtr->nTrackTool : infoPtr->nTool;

    FUNC1(" nTool=%d\n", nTool);

    if ((nTool > -1) && (nTool < infoPtr->uNumTools)) {
	if (infoPtr->tools[nTool].uFlags & TTF_TRANSPARENT) {
	    FUNC1("-- in transparent mode\n");
	    return HTTRANSPARENT;
	}
    }

    return FUNC0 (infoPtr->hwndSelf, WM_NCHITTEST, wParam, lParam);
}