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
typedef  int /*<<< orphan*/  uint8_t ;
struct xdaliclock {TYPE_1__* gif_enc; } ;
typedef  enum paint_color { ____Placeholder_paint_color } paint_color ;
struct TYPE_2__ {scalar_t__ frame; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(struct xdaliclock *xdc,
                                 int x1,
                                 int x2,
                                 int y,
                                 int screen_width,
                                 enum paint_color color)
{
    /* These unlikely checks won't happen with the default font. */

    if (FUNC0(x1 > screen_width))
        x1 = screen_width;
    else if (FUNC0(x1 < 0))
        x1 = 0;

    if (FUNC0(x2 > screen_width))
        x2 = screen_width;
    else if (FUNC0(x2 < 0))
        x2 = 0;

    if (x1 == x2)
        return;

    if (x1 > x2) {
        int swap = x1;
        x1 = x2;
        x2 = swap;
    }

    FUNC1(xdc->gif_enc->frame + y * screen_width + x1, (uint8_t)color,
           (size_t)(x2 - x1));
}