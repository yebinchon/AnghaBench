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
struct TYPE_5__ {int style; TYPE_2__* text; } ;
struct TYPE_6__ {unsigned int numParts; int style; int /*<<< orphan*/  Self; scalar_t__ hwndToolTip; scalar_t__ hDefaultFont; struct TYPE_6__* parts; TYPE_1__ part0; struct TYPE_6__* text; } ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SBT_OWNERDRAW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static LRESULT
FUNC7 (STATUS_INFO *infoPtr)
{
    unsigned int i;

    FUNC6("\n");
    for (i = 0; i < infoPtr->numParts; i++) {
	if (!(infoPtr->parts[i].style & SBT_OWNERDRAW))
	    FUNC3 (infoPtr->parts[i].text);
    }
    if (!(infoPtr->part0.style & SBT_OWNERDRAW))
	FUNC3 (infoPtr->part0.text);
    FUNC3 (infoPtr->parts);

    /* delete default font */
    if (infoPtr->hDefaultFont)
	FUNC1 (infoPtr->hDefaultFont);

    /* delete tool tip control */
    if (infoPtr->hwndToolTip)
	FUNC2 (infoPtr->hwndToolTip);

    FUNC0 (FUNC4 (infoPtr->Self));

    FUNC5(infoPtr->Self, 0, 0);
    FUNC3 (infoPtr);
    return 0;
}