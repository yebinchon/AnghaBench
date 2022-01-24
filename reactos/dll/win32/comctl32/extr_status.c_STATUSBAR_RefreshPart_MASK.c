#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ right; scalar_t__ left; } ;
struct TYPE_11__ {TYPE_7__ bound; } ;
struct TYPE_10__ {scalar_t__ clrBk; int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  TYPE_2__ STATUSWINDOWPART ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 scalar_t__ CLR_DEFAULT ; 
 int /*<<< orphan*/  COLOR_3DFACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,int /*<<< orphan*/ ,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void
FUNC10 (const STATUS_INFO *infoPtr, HDC hdc, const STATUSWINDOWPART *part, int itemID)
{
    HBRUSH hbrBk;
    HTHEME theme;

    FUNC9("item %d\n", itemID);

    if (part->bound.right < part->bound.left) return;

    if (!FUNC7(hdc, &part->bound))
        return;

    if ((theme = FUNC6 (infoPtr->Self)))
    {
        RECT cr;
        FUNC4 (infoPtr->Self, &cr);
        FUNC2(theme, hdc, 0, 0, &cr, &part->bound);
    }
    else
    {
        if (infoPtr->clrBk != CLR_DEFAULT)
                hbrBk = FUNC0 (infoPtr->clrBk);
        else
                hbrBk = FUNC5 (COLOR_3DFACE);
        FUNC3(hdc, &part->bound, hbrBk);
        if (infoPtr->clrBk != CLR_DEFAULT)
                FUNC1 (hbrBk);
    }

    FUNC8 (infoPtr, hdc, part, itemID);
}