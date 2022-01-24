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
struct TYPE_11__ {short x; short y; } ;
struct TYPE_12__ {scalar_t__ dwHitInfo; TYPE_2__ pt; scalar_t__ dwItemData; int /*<<< orphan*/  dwItemSpec; } ;
struct TYPE_10__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ NMMOUSE ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HTCLIENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NM_NCHITTEST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static LRESULT
FUNC7 (const REBAR_INFO *infoPtr, LPARAM lParam)
{
    NMMOUSE nmmouse;
    POINT clpt;
    INT i;
    UINT scrap;
    LRESULT ret = HTCLIENT;

    /*
     * Differences from doc at MSDN (as observed with version 4.71 of
     *      comctl32.dll
     * 1. doc says nmmouse.pt is in screen coord, trace shows client coord.
     * 2. if band is not identified .dwItemSpec is 0xffffffff.
     * 3. native always seems to return HTCLIENT if notify return is 0.
     */

    clpt.x = (short)FUNC1(lParam);
    clpt.y = (short)FUNC0(lParam);
    FUNC4 (infoPtr->hwndSelf, &clpt);
    FUNC2 (infoPtr, &clpt, &scrap,
			   (INT *)&nmmouse.dwItemSpec);
    nmmouse.dwItemData = 0;
    nmmouse.pt = clpt;
#ifdef __REACTOS__
    nmmouse.dwHitInfo = scrap;
#else
    nmmouse.dwHitInfo = 0;
#endif
    if ((i = FUNC3((NMHDR *) &nmmouse, infoPtr, NM_NCHITTEST))) {
	FUNC5("notify changed return value from %ld to %d\n",
	      ret, i);
	ret = (LRESULT) i;
    }
    FUNC5("returning %ld, client point %s\n", ret, FUNC6(&clpt));
    return ret;
}