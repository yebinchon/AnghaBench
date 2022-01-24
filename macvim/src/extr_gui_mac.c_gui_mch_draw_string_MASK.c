#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ p_macatsui ; 
 scalar_t__ p_macatsui_last ; 

void
FUNC4(int row, int col, char_u *s, int len, int flags)
{
#if defined(USE_ATSUI_DRAWING)
    if (p_macatsui == 0 && p_macatsui_last != 0)
	/* switch from macatsui to nomacatsui */
	gui_mac_dispose_atsui_style();
    else if (p_macatsui != 0 && p_macatsui_last == 0)
	/* switch from nomacatsui to macatsui */
	gui_mac_create_atsui_style();

    if (p_macatsui)
	draw_string_ATSUI(row, col, s, len, flags);
    else
#endif
	FUNC1(row, col, s, len, flags);
}