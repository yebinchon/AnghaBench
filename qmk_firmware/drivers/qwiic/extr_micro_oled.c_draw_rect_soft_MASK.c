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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 

void FUNC2(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color, uint8_t mode) {
    uint8_t tempHeight;

    FUNC0(x + 1, y, width - 2, color, mode);
    FUNC0(x + 1, y + height - 1, width - 2, color, mode);

    tempHeight = height - 2;

    // skip drawing vertical lines to avoid overlapping of pixel that will
    // affect XOR plot if no pixel in between horizontal lines
    if (tempHeight < 1) return;

    FUNC1(x, y + 1, tempHeight, color, mode);
    FUNC1(x + width - 1, y + 1, tempHeight, color, mode);
}