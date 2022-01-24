#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int char_height; int char_ascent; int /*<<< orphan*/  text_context; int /*<<< orphan*/  norm_font; } ;
typedef  int /*<<< orphan*/  PangoFontMetrics ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int OK ; 
 int FUNC1 (int) ; 
 int PANGO_SCALE ; 
 TYPE_1__ gui ; 
 int p_linespace ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(void)
{
    PangoFontMetrics	*metrics;
    int			ascent;
    int			descent;

    metrics = FUNC3(gui.text_context, gui.norm_font,
				FUNC2(gui.text_context));
    ascent  = FUNC4(metrics);
    descent = FUNC5(metrics);

    FUNC6(metrics);

    gui.char_height = (ascent + descent + PANGO_SCALE - 1) / PANGO_SCALE
								+ p_linespace;
    /* LINTED: avoid warning: bitwise operation on signed value */
    gui.char_ascent = FUNC1(ascent + p_linespace * PANGO_SCALE / 2);

    /* A not-positive value of char_height may crash Vim.  Only happens
     * if 'linespace' is negative (which does make sense sometimes). */
    gui.char_ascent = FUNC0(gui.char_ascent, 0);
    gui.char_height = FUNC0(gui.char_height, gui.char_ascent + 1);

    return OK;
}