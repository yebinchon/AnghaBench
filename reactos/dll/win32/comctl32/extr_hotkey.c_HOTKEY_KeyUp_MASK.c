#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ CurrMod; scalar_t__ hwndSelf; int /*<<< orphan*/  hwndNotify; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ HOTKEY_INFO ;
typedef  int DWORD ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ HOTKEYF_ALT ; 
 scalar_t__ HOTKEYF_CONTROL ; 
 scalar_t__ HOTKEYF_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
#define  VK_CONTROL 130 
#define  VK_MENU 129 
#define  VK_SHIFT 128 
 int /*<<< orphan*/  WM_COMMAND ; 
 int WS_DISABLED ; 

__attribute__((used)) static LRESULT
FUNC6 (HOTKEY_INFO *infoPtr, DWORD key)
{
    BYTE bOldMod;

    if (FUNC1(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
        return 0;

    FUNC5("() Key: %d\n", key);

    bOldMod = infoPtr->CurrMod;

    switch (key)
    {
	case VK_SHIFT:
	    infoPtr->CurrMod &= ~HOTKEYF_SHIFT;
	    break;
	case VK_CONTROL:
	    infoPtr->CurrMod &= ~HOTKEYF_CONTROL;
	    break;
	case VK_MENU:
	    infoPtr->CurrMod &= ~HOTKEYF_ALT;
	    break;
	default:
	    return 1;
    }

    if (bOldMod != infoPtr->CurrMod)
    {
        FUNC2(infoPtr->hwndSelf, NULL, TRUE);

        /* send EN_CHANGE notification */
        FUNC4(infoPtr->hwndNotify, WM_COMMAND,
            FUNC3(FUNC0(infoPtr->hwndSelf), EN_CHANGE),
            (LPARAM)infoPtr->hwndSelf);
    }

    return 0;
}