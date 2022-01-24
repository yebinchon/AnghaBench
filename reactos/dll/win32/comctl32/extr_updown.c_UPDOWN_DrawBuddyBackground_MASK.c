#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dwStyle; int /*<<< orphan*/  Self; int /*<<< orphan*/  Buddy; } ;
typedef  TYPE_1__ UPDOWN_INFO ;
struct TYPE_8__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int UDS_ALIGNLEFT ; 
 int UDS_ALIGNRIGHT ; 

__attribute__((used)) static BOOL FUNC5 (const UPDOWN_INFO *infoPtr, HDC hdc)
{
    RECT br, r;
    HTHEME buddyTheme = FUNC3 (infoPtr->Buddy);
    if (!buddyTheme) return FALSE;

    FUNC2 (infoPtr->Buddy, &br);
    FUNC4 (NULL, infoPtr->Self, (POINT*)&br, 2);
    FUNC1 (infoPtr->Self, &r);

    if (infoPtr->dwStyle & UDS_ALIGNLEFT)
        br.left = r.left;
    else if (infoPtr->dwStyle & UDS_ALIGNRIGHT)
        br.right = r.right;
    /* FIXME: take disabled etc. into account */
    FUNC0 (buddyTheme, hdc, 0, 0, &br, NULL);
    return TRUE;
}