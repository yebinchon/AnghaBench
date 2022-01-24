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
typedef  unsigned long uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long layer_state ; 

void FUNC7(void) {
    __attribute__ ((unused))
    uint32_t layer0 = layer_state & (1UL << 0),
             layer1 = layer_state & (1UL << 1),
             layer2 = layer_state & (1UL << 2),
             layer3 = layer_state & (1UL << 3);

    FUNC0();
    FUNC1();
    FUNC3();
    FUNC5();

    if (layer1) FUNC2();
    if (layer2) FUNC4();
    if (layer3) FUNC6();
}