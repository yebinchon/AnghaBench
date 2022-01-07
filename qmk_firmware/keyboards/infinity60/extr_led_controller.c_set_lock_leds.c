
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int IS31_FUNCTIONREG ;
 int IS31_REG_SHUTDOWN ;
 int IS31_REG_SHUTDOWN_OFF ;
 int IS31_REG_SHUTDOWN_ON ;
 int chThdSleepMilliseconds (int) ;
 int is31_read_register (int ,int,scalar_t__*) ;
 int is31_write_register (int ,int ,int ) ;
 int set_led_bit (scalar_t__,scalar_t__*,scalar_t__,scalar_t__) ;

void set_lock_leds(uint8_t led_addr, uint8_t led_action, uint8_t page) {
  uint8_t temp;
  uint8_t led_control_word[2] = {0};


  if (page == 0) {
    is31_write_register(IS31_FUNCTIONREG, IS31_REG_SHUTDOWN, IS31_REG_SHUTDOWN_ON);
    chThdSleepMilliseconds(5);
    is31_read_register(0, 0x00, &temp);
    is31_write_register(IS31_FUNCTIONREG, IS31_REG_SHUTDOWN, IS31_REG_SHUTDOWN_OFF);

    if (temp == 0xFF) {
      led_action |= (1<<2);
    }
  }

  set_led_bit(page,led_control_word,led_addr,led_action);
}
