#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int Flags; int dwStyle; int /*<<< orphan*/  Self; int /*<<< orphan*/  Buddy; } ;
typedef  TYPE_1__ UPDOWN_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HTHEME ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int BF_BOTTOM ; 
 int BF_LEFT ; 
 int BF_RIGHT ; 
 int BF_TOP ; 
 int DFCS_HOT ; 
 int DFCS_INACTIVE ; 
 int DFCS_PUSHED ; 
 int DFCS_SCROLLDOWN ; 
 int DFCS_SCROLLLEFT ; 
 int DFCS_SCROLLRIGHT ; 
 int DFCS_SCROLLUP ; 
 int /*<<< orphan*/  DFC_SCROLL ; 
 int DNS_DISABLED ; 
 int DNS_HOT ; 
 int DNS_NORMAL ; 
 int DNS_PRESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int FALSE ; 
 int FLAG_DECR ; 
 int FLAG_INCR ; 
 int FLAG_MOUSEIN ; 
 int FLAG_PRESSED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int SPNP_DOWN ; 
 int SPNP_DOWNHORZ ; 
 int SPNP_UP ; 
 int SPNP_UPHORZ ; 
 int UDS_ALIGNLEFT ; 
 int UDS_HORZ ; 
 int UDS_HOTTRACK ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*) ; 
 int WS_DISABLED ; 

__attribute__((used)) static LRESULT FUNC10 (const UPDOWN_INFO *infoPtr, HDC hdc)
{
    BOOL uPressed, uHot, dPressed, dHot;
    RECT rect;
    HTHEME theme = FUNC4 (infoPtr->Self);
    int uPart = 0, uState = 0, dPart = 0, dState = 0;
    BOOL needBuddyBg = FALSE;

    uPressed = (infoPtr->Flags & FLAG_PRESSED) && (infoPtr->Flags & FLAG_INCR);
    uHot = (infoPtr->Flags & FLAG_INCR) && (infoPtr->Flags & FLAG_MOUSEIN);
    dPressed = (infoPtr->Flags & FLAG_PRESSED) && (infoPtr->Flags & FLAG_DECR);
    dHot = (infoPtr->Flags & FLAG_DECR) && (infoPtr->Flags & FLAG_MOUSEIN);
    if (theme) {
        uPart = (infoPtr->dwStyle & UDS_HORZ) ? SPNP_UPHORZ : SPNP_UP;
        uState = (infoPtr->dwStyle & WS_DISABLED) ? DNS_DISABLED 
            : (uPressed ? DNS_PRESSED : (uHot ? DNS_HOT : DNS_NORMAL));
        dPart = (infoPtr->dwStyle & UDS_HORZ) ? SPNP_DOWNHORZ : SPNP_DOWN;
        dState = (infoPtr->dwStyle & WS_DISABLED) ? DNS_DISABLED 
            : (dPressed ? DNS_PRESSED : (dHot ? DNS_HOT : DNS_NORMAL));
        needBuddyBg = FUNC6 (infoPtr->Buddy)
            && (FUNC5 (theme, uPart, uState)
              || FUNC5 (theme, dPart, dState));
    }

    /* Draw the common border between ourselves and our buddy */
    if (FUNC9(infoPtr) || needBuddyBg) {
        if (!theme || !FUNC7 (infoPtr, hdc)) {
            FUNC3(infoPtr->Self, &rect);
	    FUNC0(hdc, &rect, EDGE_SUNKEN,
		     BF_BOTTOM | BF_TOP |
		     (infoPtr->dwStyle & UDS_ALIGNLEFT ? BF_LEFT : BF_RIGHT));
        }
    }

    /* Draw the incr button */
    FUNC8 (infoPtr, &rect, FLAG_INCR);
    if (theme) {
        FUNC2(theme, hdc, uPart, uState, &rect, NULL);
    } else {
        FUNC1(hdc, &rect, DFC_SCROLL,
            (infoPtr->dwStyle & UDS_HORZ ? DFCS_SCROLLRIGHT : DFCS_SCROLLUP) |
            ((infoPtr->dwStyle & UDS_HOTTRACK) && uHot ? DFCS_HOT : 0) |
            (uPressed ? DFCS_PUSHED : 0) |
            (infoPtr->dwStyle & WS_DISABLED ? DFCS_INACTIVE : 0) );
    }

    /* Draw the decr button */
    FUNC8(infoPtr, &rect, FLAG_DECR);
    if (theme) {
        FUNC2(theme, hdc, dPart, dState, &rect, NULL);
    } else {
        FUNC1(hdc, &rect, DFC_SCROLL,
            (infoPtr->dwStyle & UDS_HORZ ? DFCS_SCROLLLEFT : DFCS_SCROLLDOWN) |
            ((infoPtr->dwStyle & UDS_HOTTRACK) && dHot ? DFCS_HOT : 0) |
            (dPressed ? DFCS_PUSHED : 0) |
            (infoPtr->dwStyle & WS_DISABLED ? DFCS_INACTIVE : 0) );
    }

    return 0;
}