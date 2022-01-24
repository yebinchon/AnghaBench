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
 int /*<<< orphan*/  LED0 ; 
 int /*<<< orphan*/  LED1 ; 
 int /*<<< orphan*/  LED2 ; 
 int /*<<< orphan*/  LED3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(void) {
    FUNC0(LED0);
    FUNC0(LED1);
    #ifdef LED2
    mp_hal_pin_output(LED2);
    #endif
    #ifdef LED3
    mp_hal_pin_output(LED3);
    #endif
}