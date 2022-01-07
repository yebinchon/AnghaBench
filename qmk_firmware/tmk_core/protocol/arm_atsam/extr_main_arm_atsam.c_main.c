
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;


 int ADC0_init () ;
 int ADC_5V ;
 int CDC_init () ;
 int CLK_init () ;
 int DBGC (int ) ;
 int DBG_1_ENA ;
 int DBG_1_OFF ;
 int DBG_2_ENA ;
 int DBG_2_OFF ;
 int DBG_3_ENA ;
 int DBG_3_OFF ;
 int DBG_LED_ENA ;
 int DBG_LED_OFF ;
 int DC_MAIN_CDC_INIT_BEGIN ;
 int DC_MAIN_CDC_INIT_COMPLETE ;
 int DC_MAIN_UDC_START_BEGIN ;
 int DC_MAIN_UDC_START_COMPLETE ;
 int I2C3733_Init_Control () ;
 int I2C3733_Init_Drivers () ;
 int I2C_DMAC_LED_Init () ;
 int I2C_LED_Q_ONOFF (scalar_t__) ;
 scalar_t__ ISSI3733_DRIVER_COUNT ;
 int SR_EXP_Init () ;
 scalar_t__ USB2422_Port_Detect_Init () ;
 int USB2422_init () ;
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SLEEP_Val ;
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SUSPEND_Val ;
 int adc_get (int ) ;
 int arm_atsam_driver ;
 int debug_code_disable () ;
 int debug_code_init () ;
 scalar_t__ g_usb_state ;
 int host_set_driver (int *) ;
 int i2c1_init () ;
 int i2c_led_q_init () ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int main_subtasks () ;
 int matrix_init () ;
 scalar_t__ suspend_wakeup_condition () ;
 scalar_t__ timer_read64 () ;
 int udc_remotewakeup () ;
 int udc_start () ;
 int v_5v_avg ;
 int wait_ms (int) ;

int main(void) {
    DBG_LED_ENA;
    DBG_1_ENA;
    DBG_1_OFF;
    DBG_2_ENA;
    DBG_2_OFF;
    DBG_3_ENA;
    DBG_3_OFF;

    debug_code_init();

    CLK_init();

    ADC0_init();

    SR_EXP_Init();





    matrix_init();

    USB2422_init();

    DBGC(DC_MAIN_UDC_START_BEGIN);
    udc_start();
    DBGC(DC_MAIN_UDC_START_COMPLETE);

    DBGC(DC_MAIN_CDC_INIT_BEGIN);
    CDC_init();
    DBGC(DC_MAIN_CDC_INIT_COMPLETE);

    while (USB2422_Port_Detect_Init() == 0) {
    }

    DBG_LED_OFF;
    keyboard_setup();

    keyboard_init();

    host_set_driver(&arm_atsam_driver);





    v_5v_avg = adc_get(ADC_5V);

    debug_code_disable();

    while (1) {
        main_subtasks();

        if (g_usb_state == USB_FSMSTATUS_FSMSTATE_SUSPEND_Val || g_usb_state == USB_FSMSTATUS_FSMSTATE_SLEEP_Val) {
            if (suspend_wakeup_condition()) {
                udc_remotewakeup();
                wait_ms(50);
            }

            continue;
        }

        keyboard_task();
    }

    return 1;
}
