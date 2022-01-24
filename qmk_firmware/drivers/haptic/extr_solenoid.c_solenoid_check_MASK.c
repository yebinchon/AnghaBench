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
typedef  int uint16_t ;
struct TYPE_2__ {scalar_t__ buzz; } ;

/* Variables and functions */
 int SOLENOID_MIN_DWELL ; 
 int /*<<< orphan*/  SOLENOID_PIN ; 
 TYPE_1__ haptic_config ; 
 int solenoid_buzzing ; 
 int solenoid_dwell ; 
 int /*<<< orphan*/  solenoid_on ; 
 int /*<<< orphan*/  solenoid_start ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void) {
    uint16_t elapsed = 0;

    if (!solenoid_on) return;

    elapsed = FUNC1(solenoid_start);

    // Check if it's time to finish this solenoid click cycle
    if (elapsed > solenoid_dwell) {
        FUNC0();
        return;
    }

    // Check whether to buzz the solenoid on and off
    if (haptic_config.buzz) {
        if (elapsed / SOLENOID_MIN_DWELL % 2 == 0) {
            if (!solenoid_buzzing) {
                solenoid_buzzing = true;
                FUNC2(SOLENOID_PIN);
            }
        } else {
            if (solenoid_buzzing) {
                solenoid_buzzing = false;
                FUNC3(SOLENOID_PIN);
            }
        }
    }
}