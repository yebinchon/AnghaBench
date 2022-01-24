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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ISSI_REG_UPDATE ; 
 int /*<<< orphan*/  g_pwm_buffer ; 
 int g_pwm_buffer_update_required ; 

void FUNC2(void) {
    if (g_pwm_buffer_update_required) {
        FUNC0(g_pwm_buffer);
        // Load PWM registers and LED Control register data
        FUNC1(ISSI_REG_UPDATE, 0x01);
    }
    g_pwm_buffer_update_required = false;
}