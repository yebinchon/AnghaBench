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
struct TYPE_4__ {int /*<<< orphan*/  Self; int /*<<< orphan*/  height; int /*<<< orphan*/  hFont; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SIZE ; 

__attribute__((used)) static LRESULT
FUNC4 (STATUS_INFO *infoPtr, HFONT font, BOOL redraw)
{
    infoPtr->hFont = font;
    FUNC3("%p\n", infoPtr->hFont);

    infoPtr->height = FUNC1(infoPtr);
    FUNC2(infoPtr->Self, WM_SIZE, 0, 0);  /* update size */
    if (redraw)
        FUNC0(infoPtr->Self, NULL, FALSE);

    return 0;
}