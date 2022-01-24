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
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;
typedef  TYPE_1__ WINHELP_WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

WINHELP_WINDOW* FUNC1(WINHELP_WINDOW* win)
{
    FUNC0("Grab %p#%d++\n", win, win->ref_count);
    win->ref_count++;
    return win;
}