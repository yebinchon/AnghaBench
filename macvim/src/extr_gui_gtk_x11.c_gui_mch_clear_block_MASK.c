#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int char_width; int char_height; int /*<<< orphan*/  text_gc; TYPE_1__* drawarea; int /*<<< orphan*/  back_pixel; } ;
struct TYPE_6__ {int /*<<< orphan*/  pixel; } ;
struct TYPE_5__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_2__ GdkColor ;

/* Variables and functions */
 int Columns ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__ gui ; 

void
FUNC4(int row1, int col1, int row2, int col2)
{
    GdkColor color;

    if (gui.drawarea->window == NULL)
	return;

    color.pixel = gui.back_pixel;

    FUNC3(gui.text_gc, &color);

    /* Clear one extra pixel at the far right, for when bold characters have
     * spilled over to the window border. */
    FUNC2(gui.drawarea->window, gui.text_gc, TRUE,
		       FUNC0(col1), FUNC1(row1),
		       (col2 - col1 + 1) * gui.char_width
						      + (col2 == Columns - 1),
		       (row2 - row1 + 1) * gui.char_height);
}