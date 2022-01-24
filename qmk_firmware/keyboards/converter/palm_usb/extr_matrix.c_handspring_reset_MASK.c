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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  PinLevelHigh ; 
 int /*<<< orphan*/  PinLevelLow ; 
 int /*<<< orphan*/  VCC_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ disconnect_counter ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  last_activity ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

uint8_t FUNC5(void) {
    FUNC1(VCC_PIN, PinLevelLow);
    FUNC0(5);
    FUNC1(VCC_PIN, PinLevelHigh);

    if ( FUNC2() ) {
        last_activity = FUNC4();
        disconnect_counter=0;
        return 1;
    } else { 
        FUNC3("-HSreset");
        return 0;   
    }
}