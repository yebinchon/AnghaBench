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
typedef  int uint8_t ;
struct TYPE_2__ {int tick; } ;

/* Variables and functions */
 TYPE_1__ g_rgb_counters ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

void FUNC1(void) {
    // Mask out bits 4 and 5
    // Increase the factor to make the test animation slower (and reduce to make it faster)
    uint8_t factor = 10;
    switch ((g_rgb_counters.tick & (0b11 << factor)) >> factor) {
        case 0: {
            FUNC0(20, 0, 0);
            break;
        }
        case 1: {
            FUNC0(0, 20, 0);
            break;
        }
        case 2: {
            FUNC0(0, 0, 20);
            break;
        }
        case 3: {
            FUNC0(20, 20, 20);
            break;
        }
    }
}