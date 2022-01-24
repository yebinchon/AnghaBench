#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_17__ {scalar_t__ clrGrayText; scalar_t__ clr3dFace; scalar_t__ clrWindowText; scalar_t__ clrWindow; } ;
struct TYPE_16__ {scalar_t__ Self; TYPE_1__* Part; scalar_t__ Enabled; } ;
struct TYPE_15__ {int /*<<< orphan*/  left; int /*<<< orphan*/  right; } ;
struct TYPE_14__ {int /*<<< orphan*/  EditHwnd; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_3__ IPADDRESS_INFO ;
typedef  scalar_t__ HTHEME ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int DWORD ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 int BF_ADJUST ; 
 int BF_RECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int DT_BOTTOM ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  EP_EDITTEXT ; 
 int ES_READONLY ; 
 int ETS_DISABLED ; 
 int ETS_FOCUSED ; 
 int ETS_NORMAL ; 
 int ETS_READONLY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TMT_FILLCOLOR ; 
 int /*<<< orphan*/  TMT_TEXTCOLOR ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  WC_EDITW ; 
 TYPE_4__ comctl32_color ; 

__attribute__((used)) static LRESULT FUNC18 (const IPADDRESS_INFO *infoPtr, HDC hdc)
{
    static const WCHAR dotW[] = { '.', 0 };
    RECT rect, rcPart;
    COLORREF bgCol, fgCol;
    HTHEME theme;
    int i, state = ETS_NORMAL;

    FUNC17("\n");

    FUNC7 (infoPtr->Self, &rect);

    theme = FUNC14(infoPtr->Self, WC_EDITW);

    if (theme) {
        DWORD dwStyle = FUNC10 (infoPtr->Self, GWL_STYLE);

        if (!infoPtr->Enabled)
            state = ETS_DISABLED;
        else if (dwStyle & ES_READONLY)
            state = ETS_READONLY;
        else if (FUNC8() == infoPtr->Self)
            state = ETS_FOCUSED;

        FUNC9(theme, EP_EDITTEXT, state, TMT_FILLCOLOR, &bgCol);
        FUNC9(theme, EP_EDITTEXT, state, TMT_TEXTCOLOR, &fgCol);

        if (FUNC12 (theme, EP_EDITTEXT, state))
            FUNC4(infoPtr->Self, hdc, &rect);
        FUNC3 (theme, hdc, EP_EDITTEXT, state, &rect, 0);
    } else {
        if (infoPtr->Enabled) {
            bgCol = comctl32_color.clrWindow;
            fgCol = comctl32_color.clrWindowText;
        } else {
            bgCol = comctl32_color.clr3dFace;
            fgCol = comctl32_color.clrGrayText;
        }

        FUNC6 (hdc, &rect, (HBRUSH)(DWORD_PTR)(bgCol+1));
        FUNC1 (hdc, &rect, EDGE_SUNKEN, BF_RECT | BF_ADJUST);
    }
    
    FUNC15  (hdc, bgCol);
    FUNC16(hdc, fgCol);

    for (i = 0; i < 3; i++) {
        FUNC11 (infoPtr->Part[i].EditHwnd, &rcPart);
        FUNC13( 0, infoPtr->Self, (POINT *)&rcPart, 2 );
        rect.left = rcPart.right;
        FUNC11 (infoPtr->Part[i+1].EditHwnd, &rcPart);
        FUNC13( 0, infoPtr->Self, (POINT *)&rcPart, 2 );
        rect.right = rcPart.left;

        if (theme)
            FUNC5(theme, hdc, EP_EDITTEXT, state, dotW, 1, DT_SINGLELINE | DT_CENTER | DT_BOTTOM, 0, &rect);
        else
            FUNC2(hdc, dotW, 1, &rect, DT_SINGLELINE | DT_CENTER | DT_BOTTOM);
    }

    if (theme)
        FUNC0(theme);

    return 0;
}