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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  hcurArrow; int /*<<< orphan*/  hcurDivopen; int /*<<< orphan*/  hcurDivider; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_1__ HEADER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ HHT_ONDIVIDER ; 
 scalar_t__ HHT_ONDIVOPEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC7 (HEADER_INFO *infoPtr, LPARAM lParam)
{
    POINT pt;
    UINT  flags;
    INT   nItem;

    FUNC6("code=0x%X  id=0x%X\n", FUNC3(lParam), FUNC2(lParam));

    FUNC0 (&pt);
    FUNC4 (infoPtr->hwndSelf, &pt);

    FUNC1 (infoPtr, &pt, &flags, &nItem);

    if (flags == HHT_ONDIVIDER)
        FUNC5 (infoPtr->hcurDivider);
    else if (flags == HHT_ONDIVOPEN)
        FUNC5 (infoPtr->hcurDivopen);
    else
        FUNC5 (infoPtr->hcurArrow);

    return 0;
}