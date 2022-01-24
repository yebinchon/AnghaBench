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
struct TYPE_2__ {short h; short y; int /*<<< orphan*/  x; int /*<<< orphan*/  w; } ;
struct rawfb_context {TYPE_1__ scissors; } ;
struct nk_color {int dummy; } ;

/* Variables and functions */
 short FUNC0 (int /*<<< orphan*/ ,short) ; 
 short FUNC1 (int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC2 (struct rawfb_context const*,short,short,struct nk_color const) ; 
 int /*<<< orphan*/  FUNC3 (struct rawfb_context const*,short,short,short,struct nk_color const) ; 

__attribute__((used)) static void
FUNC4(const struct rawfb_context *rawfb,
    short x0, short y0, short x1, short y1,
    const unsigned int line_thickness, const struct nk_color col)
{
    short tmp;
    int dy, dx, stepx, stepy;

    dy = y1 - y0;
    dx = x1 - x0;

    /* fast path */
    if (dy == 0) {
        if (dx == 0 || y0 >= rawfb->scissors.h || y0 < rawfb->scissors.y)
            return;

        if (dx < 0) {
            /* swap x0 and x1 */
            tmp = x1;
            x1 = x0;
            x0 = tmp;
        }
        x1 = FUNC1(rawfb->scissors.w, x1);
        x0 = FUNC1(rawfb->scissors.w, x0);
        x1 = FUNC0(rawfb->scissors.x, x1);
        x0 = FUNC0(rawfb->scissors.x, x0);
        FUNC3(rawfb, x0, y0, x1, col);
        return;
    }
    if (dy < 0) {
        dy = -dy;
        stepy = -1;
    } else stepy = 1;

    if (dx < 0) {
        dx = -dx;
        stepx = -1;
    } else stepx = 1;

    dy <<= 1;
    dx <<= 1;

    FUNC2(rawfb, x0, y0, col);
    if (dx > dy) {
        int fraction = dy - (dx >> 1);
        while (x0 != x1) {
            if (fraction >= 0) {
                y0 += stepy;
                fraction -= dx;
            }
            x0 += stepx;
            fraction += dy;
            FUNC2(rawfb, x0, y0, col);
        }
    } else {
        int fraction = dx - (dy >> 1);
        while (y0 != y1) {
            if (fraction >= 0) {
                x0 += stepx;
                fraction -= dy;
            }
            y0 += stepy;
            fraction += dx;
            FUNC2(rawfb, x0, y0, col);
        }
    }
}