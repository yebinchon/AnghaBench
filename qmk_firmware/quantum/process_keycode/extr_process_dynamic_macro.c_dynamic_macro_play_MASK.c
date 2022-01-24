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
typedef  int /*<<< orphan*/  layer_state_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(keyrecord_t *macro_buffer, keyrecord_t *macro_end, int8_t direction) {
    FUNC2("dynamic macro: slot %d playback\n", FUNC0());

    layer_state_t saved_layer_state = layer_state;

    FUNC1();
    FUNC4();

    while (macro_buffer != macro_end) {
        FUNC5(macro_buffer);
        macro_buffer += direction;
    }

    FUNC1();

    layer_state = saved_layer_state;

    FUNC3(direction);
}