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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ISSI_COMMANDREGISTER ; 
 int /*<<< orphan*/  ISSI_COMMANDREGISTER_WRITELOCK ; 
 int ISSI_PAGE_PWM ; 
 int /*<<< orphan*/ * g_pwm_buffer ; 
 int* g_pwm_buffer_update_required ; 

void FUNC2(uint8_t addr, uint8_t index) {
    if (g_pwm_buffer_update_required[index]) {
        // Firstly we need to unlock the command register and select PG1
        FUNC1(addr, ISSI_COMMANDREGISTER_WRITELOCK, 0xC5);
        FUNC1(addr, ISSI_COMMANDREGISTER, ISSI_PAGE_PWM);

        FUNC0(addr, g_pwm_buffer[index]);
    }
    g_pwm_buffer_update_required[index] = false;
}