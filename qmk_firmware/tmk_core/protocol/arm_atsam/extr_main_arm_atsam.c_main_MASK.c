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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ADC_5V ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_1_ENA ; 
 int /*<<< orphan*/  DBG_1_OFF ; 
 int /*<<< orphan*/  DBG_2_ENA ; 
 int /*<<< orphan*/  DBG_2_OFF ; 
 int /*<<< orphan*/  DBG_3_ENA ; 
 int /*<<< orphan*/  DBG_3_OFF ; 
 int /*<<< orphan*/  DBG_LED_ENA ; 
 int /*<<< orphan*/  DBG_LED_OFF ; 
 int /*<<< orphan*/  DC_MAIN_CDC_INIT_BEGIN ; 
 int /*<<< orphan*/  DC_MAIN_CDC_INIT_COMPLETE ; 
 int /*<<< orphan*/  DC_MAIN_UDC_START_BEGIN ; 
 int /*<<< orphan*/  DC_MAIN_UDC_START_COMPLETE ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ ISSI3733_DRIVER_COUNT ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SLEEP_Val ; 
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SUSPEND_Val ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_atsam_driver ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ g_usb_state ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  v_5v_avg ; 
 int /*<<< orphan*/  FUNC26 (int) ; 

int FUNC27(void) {
    DBG_LED_ENA;
    DBG_1_ENA;
    DBG_1_OFF;
    DBG_2_ENA;
    DBG_2_OFF;
    DBG_3_ENA;
    DBG_3_OFF;

    FUNC13();

    FUNC2();

    FUNC0();

    FUNC8();

#ifdef RGB_MATRIX_ENABLE
    i2c1_init();
#endif  // RGB_MATRIX_ENABLE

    FUNC21();

    FUNC10();

    FUNC3(DC_MAIN_UDC_START_BEGIN);
    FUNC25();
    FUNC3(DC_MAIN_UDC_START_COMPLETE);

    FUNC3(DC_MAIN_CDC_INIT_BEGIN);
    FUNC1();
    FUNC3(DC_MAIN_CDC_INIT_COMPLETE);

    while (FUNC9() == 0) {
    }

    DBG_LED_OFF;

#ifdef RGB_MATRIX_ENABLE
    while (I2C3733_Init_Control() != 1) {
    }
    while (I2C3733_Init_Drivers() != 1) {
    }

    I2C_DMAC_LED_Init();

    i2c_led_q_init();

    for (uint8_t drvid = 0; drvid < ISSI3733_DRIVER_COUNT; drvid++) I2C_LED_Q_ONOFF(drvid);  // Queue data
#endif                                                                                       // RGB_MATRIX_ENABLE

    FUNC18();

    FUNC17();

    FUNC14(&arm_atsam_driver);

#ifdef CONSOLE_ENABLE
    uint64_t next_print = 0;
#endif  // CONSOLE_ENABLE

    v_5v_avg = FUNC11(ADC_5V);

    FUNC12();

    while (1) {
        FUNC20();  // Note these tasks will also be run while waiting for USB keyboard polling intervals

        if (g_usb_state == USB_FSMSTATUS_FSMSTATE_SUSPEND_Val || g_usb_state == USB_FSMSTATUS_FSMSTATE_SLEEP_Val) {
            if (FUNC22()) {
                FUNC24();  // Send remote wakeup signal
                FUNC26(50);
            }

            continue;
        }

        FUNC19();

#ifdef CONSOLE_ENABLE
        if (timer_read64() > next_print) {
            next_print = timer_read64() + 250;
            // Add any debug information here that you want to see very often
            // dprintf("5v=%u 5vu=%u dlow=%u dhi=%u gca=%u gcd=%u\r\n", v_5v, v_5v_avg, v_5v_avg - V5_LOW, v_5v_avg - V5_HIGH, gcr_actual, gcr_desired);
        }
#endif  // CONSOLE_ENABLE
    }

    return 1;
}