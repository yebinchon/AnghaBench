#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwStyle; int /*<<< orphan*/  rcSelection; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  rcChannel; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ HTHEME ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int BF_ADJUST ; 
 int BF_RECT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int TBS_ENABLESELRANGE ; 
 int TBS_VERT ; 
 int /*<<< orphan*/  TKP_TRACK ; 
 int /*<<< orphan*/  TKP_TRACKVERT ; 
 int /*<<< orphan*/  TKS_NORMAL ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 

__attribute__((used)) static void
FUNC7 (const TRACKBAR_INFO *infoPtr, HDC hdc)
{
    RECT rcChannel = infoPtr->rcChannel;
    HTHEME theme = FUNC5 (infoPtr->hwndSelf);

    if (theme)
    {
        FUNC1 (theme, hdc, 
            (infoPtr->dwStyle & TBS_VERT) ?
                TKP_TRACKVERT : TKP_TRACK, TKS_NORMAL, &rcChannel, 0);
    }
    else
    {
        FUNC0 (hdc, &rcChannel, EDGE_SUNKEN, BF_RECT | BF_ADJUST);
        if (infoPtr->dwStyle & TBS_ENABLESELRANGE) {		 /* fill the channel */
            FUNC2 (hdc, &rcChannel, FUNC3(WHITE_BRUSH));
            if (FUNC6(infoPtr))
                FUNC2 (hdc, &infoPtr->rcSelection, FUNC4(COLOR_HIGHLIGHT));
        }
    }
}