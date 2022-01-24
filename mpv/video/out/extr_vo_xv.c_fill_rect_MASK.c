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
struct vo_x11_state {scalar_t__ window; int /*<<< orphan*/  display; } ;
struct vo {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; struct vo_x11_state* x11; } ;
typedef  scalar_t__ GC ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct vo *vo, GC gc, int x0, int y0, int x1, int y1)
{
    struct vo_x11_state *x11 = vo->x11;

    x0 = FUNC0(x0, 0);
    y0 = FUNC0(y0, 0);
    x1 = FUNC1(x1, vo->dwidth);
    y1 = FUNC1(y1, vo->dheight);

    if (x11->window && gc && x1 > x0 && y1 > y0)
        FUNC2(x11->display, x11->window, gc, x0, y0, x1 - x0, y1 - y0);
}