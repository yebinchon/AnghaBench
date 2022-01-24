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
typedef  int /*<<< orphan*/  Window ;
struct TYPE_4__ {TYPE_1__* drawarea; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 TYPE_2__ gui ; 

void
FUNC3(int x, int y)
{
    /* Sorry for the Xlib call, but we can't avoid it, since there is no
     * internal GDK mechanism present to accomplish this.  (and for good
     * reason...) */
    FUNC2(FUNC0(gui.drawarea->window),
		 (Window)0, FUNC1(gui.drawarea->window),
		 0, 0, 0U, 0U, x, y);
}