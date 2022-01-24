#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  visualizer_user_data_t ;
struct TYPE_6__ {scalar_t__ user_data; } ;
struct TYPE_7__ {void* target_lcd_color; TYPE_1__ status; } ;
typedef  TYPE_2__ visualizer_state_t ;
struct TYPE_8__ {scalar_t__ user_data; } ;
typedef  TYPE_3__ visualizer_keyboard_status_t ;
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ LCD_STATE_INITIAL ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ lcd_state ; 
 int /*<<< orphan*/ * led_emulation_colors ; 
 void* next_led_target_color ; 
 int /*<<< orphan*/  one_led_color ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  two_led_colors ; 

__attribute__((used)) static void FUNC8(visualizer_state_t* state, visualizer_keyboard_status_t* prev_status) {
    visualizer_user_data_t* user_data_new = (visualizer_user_data_t*)state->status.user_data;
    visualizer_user_data_t* user_data_old = (visualizer_user_data_t*)prev_status->user_data;

    uint8_t new_index;
    uint8_t old_index;

    if (FUNC5()) {
        new_index = FUNC2(user_data_new);
        old_index = FUNC2(user_data_old);
    }
    else {
        new_index = FUNC3(user_data_new);
        old_index = FUNC3(user_data_old);
    }
    uint8_t new_secondary_index = FUNC4(user_data_new);
    uint8_t old_secondary_index = FUNC4(user_data_old);

    uint8_t old_brightness = FUNC1(user_data_old, old_index);
    uint8_t new_brightness = FUNC1(user_data_new, new_index);

    uint8_t old_secondary_brightness = FUNC1(user_data_old, old_secondary_index);
    uint8_t new_secondary_brightness = FUNC1(user_data_new, new_secondary_index);

    if (lcd_state == LCD_STATE_INITIAL ||
            new_index != old_index ||
            new_secondary_index != old_secondary_index ||
            new_brightness != old_brightness ||
            new_secondary_brightness != old_secondary_brightness) {

        if (new_secondary_index != 0) {
            state->target_lcd_color = FUNC0(
                led_emulation_colors[new_index], new_brightness);
            next_led_target_color = FUNC0(
                led_emulation_colors[new_secondary_index], new_secondary_brightness);

            FUNC7(&one_led_color);
            FUNC6(&two_led_colors);
        } else {
            state->target_lcd_color = FUNC0(
                led_emulation_colors[new_index], new_brightness);
            FUNC7(&two_led_colors);
            FUNC6(&one_led_color);
        }
    }
}