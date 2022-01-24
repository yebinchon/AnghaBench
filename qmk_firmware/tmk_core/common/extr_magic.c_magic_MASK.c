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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  layer_state_t ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 TYPE_2__ debug_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ keymap_config ; 

void FUNC6(void) {
    /* check signature */
    if (!FUNC2()) {
        FUNC1();
    }

    /* debug enable */
    debug_config.raw = FUNC3();

    /* keymap config */
    keymap_config.raw = FUNC5();

    uint8_t default_layer = 0;
    default_layer         = FUNC4();
    FUNC0((layer_state_t)default_layer);
}