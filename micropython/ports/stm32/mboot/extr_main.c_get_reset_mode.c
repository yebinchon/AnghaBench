
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RESET_MODE_LED_STATES ;
 int RESET_MODE_NUM_STATES ;
 int RESET_MODE_TIMEOUT_CYCLES ;
 int led_init () ;
 int led_state_all (int) ;
 int mp_hal_delay_ms (int) ;
 int systick_init () ;
 int usrbtn_init () ;
 scalar_t__ usrbtn_state () ;

__attribute__((used)) static int get_reset_mode(void) {
    usrbtn_init();
    int reset_mode = 1;
    if (usrbtn_state()) {


        systick_init();
        led_init();
        reset_mode = 0;
        for (int i = 0; i < (RESET_MODE_NUM_STATES * RESET_MODE_TIMEOUT_CYCLES + 1) * 32; i++) {
            if (i % 32 == 0) {
                if (++reset_mode > RESET_MODE_NUM_STATES) {
                    reset_mode = 1;
                }
                uint8_t l = RESET_MODE_LED_STATES >> ((reset_mode - 1) * 4);
                led_state_all(l);
            }
            if (!usrbtn_state()) {
                break;
            }
            mp_hal_delay_ms(19);
        }

        for (int i = 0; i < 6; i++) {
            led_state_all(0);
            mp_hal_delay_ms(50);
            uint8_t l = RESET_MODE_LED_STATES >> ((reset_mode - 1) * 4);
            led_state_all(l);
            mp_hal_delay_ms(50);
        }
        mp_hal_delay_ms(300);
    }
    return reset_mode;
}
