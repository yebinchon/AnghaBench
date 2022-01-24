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
typedef  int /*<<< orphan*/  battery_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHARGING ; 
 int /*<<< orphan*/  DISCHARGING ; 
 int /*<<< orphan*/  FULL_CHARGED ; 
 int /*<<< orphan*/  LOW_VOLTAGE ; 
 int USBSTA ; 
 int VBUS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

battery_status_t FUNC2(void)
{
    if (USBSTA&(1<<VBUS)) {
        /* powered */
        return FUNC0() ? CHARGING : FULL_CHARGED;
    } else {
        /* not powered */
        return FUNC1() ? LOW_VOLTAGE : DISCHARGING;
    }
}