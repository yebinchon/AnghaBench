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
struct TYPE_5__ {scalar_t__ clrBk; unsigned int numParts; int /*<<< orphan*/  Notify; int /*<<< orphan*/  Self; int /*<<< orphan*/ * parts; int /*<<< orphan*/  part0; scalar_t__ simple; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 scalar_t__ CLR_DEFAULT ; 
 int /*<<< orphan*/  COLOR_3DFACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int SBARS_SIZEGRIP ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int WS_MAXIMIZE ; 

__attribute__((used)) static LRESULT
FUNC14 (STATUS_INFO *infoPtr, HDC hdc)
{
    RECT   rect;
    HBRUSH hbrBk;
    HFONT  hOldFont;
    HTHEME theme;

    FUNC13("\n");
    if (!FUNC8(infoPtr->Self))
        return 0;

    FUNC11(infoPtr);

    FUNC4 (infoPtr->Self, &rect);

    if ((theme = FUNC7 (infoPtr->Self)))
    {
        FUNC2(theme, hdc, 0, 0, &rect, NULL);
    }
    else
    {
        if (infoPtr->clrBk != CLR_DEFAULT)
            hbrBk = FUNC0 (infoPtr->clrBk);
        else
            hbrBk = FUNC5 (COLOR_3DFACE);
        FUNC3(hdc, &rect, hbrBk);
        if (infoPtr->clrBk != CLR_DEFAULT)
            FUNC1 (hbrBk);
    }

    hOldFont = FUNC12 (hdc, infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont);

    if (infoPtr->simple) {
	FUNC10 (infoPtr, hdc, &infoPtr->part0, 0);
    } else {
        unsigned int i;

	for (i = 0; i < infoPtr->numParts; i++) {
	    FUNC10 (infoPtr, hdc, &infoPtr->parts[i], i);
	}
    }

    FUNC12 (hdc, hOldFont);

    if ((FUNC6 (infoPtr->Self, GWL_STYLE) & SBARS_SIZEGRIP)
            && !(FUNC6 (infoPtr->Notify, GWL_STYLE) & WS_MAXIMIZE))
	    FUNC9 (theme, hdc, &rect);

    return 0;
}