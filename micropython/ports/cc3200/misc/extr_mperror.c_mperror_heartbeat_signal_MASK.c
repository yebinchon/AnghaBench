#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int do_disable; int beating; scalar_t__ on_time; scalar_t__ off_time; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT_PIN ; 
 scalar_t__ MPERROR_HEARTBEAT_OFF_MS ; 
 scalar_t__ MPERROR_HEARTBEAT_ON_MS ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ mperror_heart_beat ; 

void FUNC2 (void) {
    if (mperror_heart_beat.do_disable) {
        mperror_heart_beat.do_disable = false;
    } else if (mperror_heart_beat.enabled) {
        if (!mperror_heart_beat.beating) {
            if ((mperror_heart_beat.on_time = FUNC1()) - mperror_heart_beat.off_time > MPERROR_HEARTBEAT_OFF_MS) {
                FUNC0(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, MICROPY_SYS_LED_PORT_PIN);
                mperror_heart_beat.beating = true;
            }
        } else {
            if ((mperror_heart_beat.off_time = FUNC1()) - mperror_heart_beat.on_time > MPERROR_HEARTBEAT_ON_MS) {
                FUNC0(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, 0);
                mperror_heart_beat.beating = false;
            }
        }
    }
}