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
typedef  int /*<<< orphan*/  visualizer_state_t ;
typedef  int /*<<< orphan*/  visualizer_keyboard_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(visualizer_state_t* state, visualizer_keyboard_status_t* prev_status) {
    // Check the status here to start and stop animations
    // You might have to save some state, like the current animation here so that you can start the right
    // This function is called every time the status changes

    // NOTE that this is called from the visualizer thread, so don't access anything else outside the status
    // This is also important because the slave won't have access to the active layer for example outside the
    // status.

    FUNC0(state, prev_status);
    FUNC1(state, prev_status);

}