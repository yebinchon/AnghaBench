
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2Cx_EV_IRQn ;
 int MBOOT_I2Cx ;
 int NVIC_SystemReset () ;
 int i2c_slave_shutdown (int ,int ) ;
 int led_state_all (int ) ;
 int mp_hal_delay_ms (int) ;
 int pyb_usbdd_shutdown () ;

__attribute__((used)) static void do_reset(void) {
    led_state_all(0);
    mp_hal_delay_ms(50);
    pyb_usbdd_shutdown();



    mp_hal_delay_ms(50);
    NVIC_SystemReset();
}
