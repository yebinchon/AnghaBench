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
struct TYPE_2__ {int /*<<< orphan*/  vimTextArea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,short,short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,short*,short*) ; 
 TYPE_1__ gui ; 

void
FUNC3(int x, int y)
{
    short abs_x, abs_y;

    FUNC2(gui.vimTextArea, &abs_x, &abs_y);
    /* Add the border offset? */
    FUNC1(FUNC0(NULL), abs_x + x, abs_y + y);
}