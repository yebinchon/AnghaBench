#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guicolor_T ;
struct TYPE_9__ {scalar_t__ char_height; scalar_t__ char_width; int /*<<< orphan*/  row; int /*<<< orphan*/  col; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_1__ ul; TYPE_2__ lr; } ;
typedef  TYPE_3__ PhRect_t ;

/* Variables and functions */
 int /*<<< orphan*/  DRAW_END ; 
 int /*<<< orphan*/  DRAW_START ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pg_DRAW_STROKE ; 
 TYPE_4__ gui ; 

void
FUNC4(guicolor_T color)
{
    PhRect_t r;

    /* FIXME: Double width characters */

    r.ul.x = FUNC0(gui.col);
    r.ul.y = FUNC1(gui.row);
    r.lr.x = r.ul.x + gui.char_width - 1;
    r.lr.y = r.ul.y + gui.char_height - 1;

    DRAW_START;
    FUNC3(color);
    FUNC2(&r, Pg_DRAW_STROKE);
    DRAW_END;
}