#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int b; int g; int r; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(uint8_t *data, uint16_t leds) {  // Data is struct of 3 bytes. RGB - leds is number of leds in data
    FUNC2();
    while (leds--) {
        FUNC1(0xFF000000 | (data->b << 16) | (data->g << 8) | data->r);
        data++;
    }
    FUNC0(leds);
}