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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ ERROR_DISCONNECT_COUNT ; 
 int ROWS_PER_HAND ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__* matrix ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int thatHand ; 
 int thisHand ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

uint8_t FUNC7(void) {
    uint8_t ret = FUNC0();

    if (FUNC2()) {
        static uint8_t error_count;

        if (!FUNC5(matrix + thatHand)) {
            error_count++;

            if (error_count > ERROR_DISCONNECT_COUNT) {
                // reset other half if disconnected
                for (int i = 0; i < ROWS_PER_HAND; ++i) {
                    matrix[thatHand + i] = 0;
                }
            }
        } else {
            error_count = 0;
        }

        FUNC3();
    } else {
        FUNC6(matrix + thisHand);
#ifdef ENCODER_ENABLE
        encoder_read();
#endif
        FUNC4();
    }

    return ret;
}