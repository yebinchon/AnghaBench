#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  text_gc; TYPE_1__* drawarea; int /*<<< orphan*/  fgcolor; int /*<<< orphan*/  spcolor; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int DRAW_UNDERC ; 
 int DRAW_UNDERL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 int p_linespace ; 

__attribute__((used)) static void
FUNC5(int flags, int row, int col, int cells)
{
    int			i;
    int			offset;
    static const int	val[8] = {1, 0, 0, 0, 1, 2, 2, 2 };
    int			y = FUNC1(row + 1) - 1;

    /* Undercurl: draw curl at the bottom of the character cell. */
    if (flags & DRAW_UNDERC)
    {
	FUNC4(gui.text_gc, gui.spcolor);
	for (i = FUNC0(col); i < FUNC0(col + cells); ++i)
	{
	    offset = val[i % 8];
	    FUNC3(gui.drawarea->window, gui.text_gc, i, y - offset);
	}
	FUNC4(gui.text_gc, gui.fgcolor);
    }

    /* Underline: draw a line at the bottom of the character cell. */
    if (flags & DRAW_UNDERL)
    {
	/* When p_linespace is 0, overwrite the bottom row of pixels.
	 * Otherwise put the line just below the character. */
	if (p_linespace > 1)
	    y -= p_linespace - 1;
	FUNC2(gui.drawarea->window, gui.text_gc,
		      FUNC0(col), y,
		      FUNC0(col + cells) - 1, y);
    }
}