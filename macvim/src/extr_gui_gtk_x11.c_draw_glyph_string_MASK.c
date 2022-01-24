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
struct TYPE_4__ {int char_width; int /*<<< orphan*/  text_gc; TYPE_1__* drawarea; int /*<<< orphan*/  font_can_bold; int /*<<< orphan*/  fgcolor; int /*<<< orphan*/  char_height; int /*<<< orphan*/  bgcolor; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  PangoGlyphString ;
typedef  int /*<<< orphan*/  PangoFont ;

/* Variables and functions */
 int DRAW_BOLD ; 
 int DRAW_TRANSP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 

__attribute__((used)) static void
FUNC7(int row, int col, int num_cells, int flags,
		  PangoFont *font, PangoGlyphString *glyphs)
{
    if (!(flags & DRAW_TRANSP))
    {
	FUNC6(gui.text_gc, gui.bgcolor);

	FUNC5(gui.drawarea->window,
			   gui.text_gc,
			   TRUE,
			   FUNC0(col),
			   FUNC1(row),
			   num_cells * gui.char_width,
			   gui.char_height);
    }

    FUNC6(gui.text_gc, gui.fgcolor);

    FUNC4(gui.drawarea->window,
		    gui.text_gc,
		    font,
		    FUNC2(col),
		    FUNC3(row),
		    glyphs);

    /* redraw the contents with an offset of 1 to emulate bold */
    if ((flags & DRAW_BOLD) && !gui.font_can_bold)
	FUNC4(gui.drawarea->window,
			gui.text_gc,
			font,
			FUNC2(col) + 1,
			FUNC3(row),
			glyphs);
}