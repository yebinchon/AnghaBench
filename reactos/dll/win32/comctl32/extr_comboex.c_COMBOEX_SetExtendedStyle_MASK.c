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
struct TYPE_4__ {int dwExtStyle; scalar_t__ hwndEdit; scalar_t__ hwndSelf; } ;
typedef  int DWORD ;
typedef  TYPE_1__ COMBOEX_INFO ;

/* Variables and functions */
 int CBES_EX_NOEDITIMAGE ; 
 int CBES_EX_NOEDITIMAGEINDENT ; 
 int CBES_EX_PATHWORDBREAKPROC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static DWORD
FUNC4 (COMBOEX_INFO *infoPtr, DWORD mask, DWORD style)
{
    DWORD dwTemp;

    FUNC3("(mask=x%08x, style=0x%08x)\n", mask, style);

    dwTemp = infoPtr->dwExtStyle;

    if (mask)
	infoPtr->dwExtStyle = (infoPtr->dwExtStyle & ~mask) | style;
    else
	infoPtr->dwExtStyle = style;

    /* see if we need to change the word break proc on the edit */
    if ((infoPtr->dwExtStyle ^ dwTemp) & CBES_EX_PATHWORDBREAKPROC)
        FUNC2(infoPtr->hwndEdit, 
            (infoPtr->dwExtStyle & CBES_EX_PATHWORDBREAKPROC) != 0);

    /* test if the control's appearance has changed */
    mask = CBES_EX_NOEDITIMAGE | CBES_EX_NOEDITIMAGEINDENT;
    if ((infoPtr->dwExtStyle & mask) != (dwTemp & mask)) {
	/* if state of EX_NOEDITIMAGE changes, invalidate all */
	FUNC3("EX_NOEDITIMAGE state changed to %d\n",
	      infoPtr->dwExtStyle & CBES_EX_NOEDITIMAGE);
	FUNC1 (infoPtr->hwndSelf, NULL, TRUE);
	FUNC0 (infoPtr);
	if (infoPtr->hwndEdit)
	    FUNC1 (infoPtr->hwndEdit, NULL, TRUE);
    }

    return dwTemp;
}