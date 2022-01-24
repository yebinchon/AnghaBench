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
struct TYPE_3__ {char* layer_text; int /*<<< orphan*/  target_lcd_color; int /*<<< orphan*/  current_lcd_color; } ;
typedef  TYPE_1__ visualizer_state_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_suspend_animation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(visualizer_state_t* state) {
    state->layer_text = "Suspending...";
    uint8_t hue = FUNC1(state->current_lcd_color);
    uint8_t sat = FUNC2(state->current_lcd_color);
    state->target_lcd_color = FUNC0(hue, sat, 0);
    FUNC3(&default_suspend_animation);
}