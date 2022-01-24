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
struct TYPE_5__ {TYPE_2__* first_button; } ;
typedef  TYPE_1__ WINHELP_WINDOW ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_2__ WINHELP_BUTTON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(WINHELP_WINDOW* win)
{
    WINHELP_BUTTON*     b;
    WINHELP_BUTTON*     bp;

    for (b = win->first_button; b; b = bp)
    {
        FUNC0(b->hWnd);
        bp = b->next;
        FUNC2(FUNC1(), 0, b);
    }
    win->first_button = NULL;
}