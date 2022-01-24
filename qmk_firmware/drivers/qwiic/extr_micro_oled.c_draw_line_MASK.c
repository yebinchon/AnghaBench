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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t color, uint8_t mode) {
    uint8_t steep = FUNC0(y1 - y0) > FUNC0(x1 - x0);
    if (steep) {
        FUNC2(x0, y0);
        FUNC2(x1, y1);
    }

    if (x0 > x1) {
        FUNC2(x0, x1);
        FUNC2(y0, y1);
    }

    uint8_t dx, dy;
    dx = x1 - x0;
    dy = FUNC0(y1 - y0);

    int8_t err = dx / 2;
    int8_t ystep;

    if (y0 < y1) {
        ystep = 1;
    } else {
        ystep = -1;
    }

    for (; x0 < x1; x0++) {
        if (steep) {
            FUNC1(y0, x0, color, mode);
        } else {
            FUNC1(x0, y0, color, mode);
        }
        err -= dy;
        if (err < 0) {
            y0 += ystep;
            err += dx;
        }
    }
}