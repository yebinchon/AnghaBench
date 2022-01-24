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
 scalar_t__ DEVICE_STATE_Suspended ; 
 scalar_t__ DEVICE_STATE_Unattached ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 size_t MATRIX_COLS ; 
 scalar_t__ MATRIX_POWER_SAVE ; 
 size_t MATRIX_ROWS ; 
 int FUNC9 (size_t,size_t) ; 
 size_t TIMER_RAW ; 
 int TIMER_RAW_FREQ ; 
 scalar_t__ USB_DeviceState ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int* matrix ; 
 int /*<<< orphan*/  matrix_last_modified ; 
 int* matrix_prev ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

uint8_t FUNC15(void)
{
    uint8_t *tmp;

    tmp = matrix_prev;
    matrix_prev = matrix;
    matrix = tmp;

    // power on
    if (!FUNC3()) FUNC2();
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        for (uint8_t col = 0; col < MATRIX_COLS; col++) {
            FUNC6(row, col);
            FUNC10(5);

            // Not sure this is needed. This just emulates HHKB controller's behaviour.
            if (matrix_prev[row] & (1<<col)) {
                FUNC5();
            }
            FUNC10(10);

            // NOTE: KEY_STATE is valid only in 20us after KEY_ENABLE.
            // If V-USB interrupts in this section we could lose 40us or so
            // and would read invalid value from KEY_STATE.
            uint8_t last = TIMER_RAW;

            FUNC0();

            // Wait for KEY_STATE outputs its value.
            // 1us was ok on one HHKB, but not worked on another.
            // no   wait doesn't work on Teensy++ with pro(1us works)
            // no   wait does    work on tmk PCB(8MHz) with pro2
            // 1us  wait does    work on both of above
            // 1us  wait doesn't work on tmk(16MHz)
            // 5us  wait does    work on tmk(16MHz)
            // 5us  wait does    work on tmk(16MHz/2)
            // 5us  wait does    work on tmk(8MHz)
            // 10us wait does    work on Teensy++ with pro
            // 10us wait does    work on 328p+iwrap with pro
            // 10us wait doesn't work on tmk PCB(8MHz) with pro2(very lagged scan)
            FUNC10(5);

            if (FUNC7()) {
                matrix[row] &= ~(1<<col);
            } else {
                matrix[row] |= (1<<col);
            }

            // Ignore if this code region execution time elapses more than 20us.
            // MEMO: 20[us] * (TIMER_RAW_FREQ / 1000000)[count per us]
            // MEMO: then change above using this rule: a/(b/c) = a*1/(b/c) = a*(c/b)
            if (FUNC9(TIMER_RAW, last) > 20/(1000000/TIMER_RAW_FREQ)) {
                matrix[row] = matrix_prev[row];
            }

            FUNC10(5);
            FUNC4();
            FUNC8();

            // NOTE: KEY_STATE keep its state in 20us after KEY_ENABLE.
            // This takes 25us or more to make sure KEY_STATE returns to idle state.
#ifdef HHKB_JP
            // Looks like JP needs faster scan due to its twice larger matrix
            // or it can drop keys in fast key typing
            _delay_us(30);
#else
            FUNC10(75);
#endif
        }
        if (matrix[row] ^ matrix_prev[row]) matrix_last_modified = FUNC14();
    }
    // power off
    if (FUNC3() &&
            (USB_DeviceState == DEVICE_STATE_Suspended ||
             USB_DeviceState == DEVICE_STATE_Unattached ) &&
            FUNC13(matrix_last_modified) > MATRIX_POWER_SAVE) {
        FUNC1();
        FUNC12();
    }

    FUNC11();

    return 1;
}