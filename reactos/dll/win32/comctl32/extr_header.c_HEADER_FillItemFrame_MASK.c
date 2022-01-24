#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_5__ {scalar_t__ bDown; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ HTHEME ;
typedef  TYPE_1__ HEADER_ITEM ;
typedef  TYPE_2__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int HIS_HOT ; 
 int HIS_NORMAL ; 
 int HIS_PRESSED ; 
 int /*<<< orphan*/  HP_HEADERITEM ; 

__attribute__((used)) static void
FUNC7(HEADER_INFO *infoPtr, HDC hdc, RECT *r, const HEADER_ITEM *item, BOOL hottrack)
{
    HTHEME theme = FUNC6 (infoPtr->hwndSelf);

    if (theme) {
        int state = (item->bDown) ? HIS_PRESSED : (hottrack ? HIS_HOT : HIS_NORMAL);
        FUNC2 (theme, hdc, HP_HEADERITEM, state, r, NULL);
        FUNC5 (theme, hdc, HP_HEADERITEM, state, r, r);
    }
    else
    {
        HBRUSH hbr = FUNC0(FUNC4(hdc));
        FUNC3(hdc, r, hbr);
        FUNC1(hbr);
    }
}