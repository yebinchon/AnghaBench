
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IS31_FUNCTIONREG ;
 int IS31_REG_SHUTDOWN ;
 int IS31_REG_SHUTDOWN_OFF ;
 int IS31_REG_SHUTDOWN_ON ;
 int chThdSleepMilliseconds (int) ;
 int is31_read_register (int,int,int*) ;
 int is31_write_data (int,int*,int) ;
 int is31_write_register (int ,int ,int ) ;

void set_led_bit (uint8_t page, uint8_t *led_control_word, uint8_t led_addr, uint8_t action) {



  uint8_t control_reg_addr, column_bit, column_byte, temp, blink_bit;


  if (led_addr < 0 || led_addr > 87 || led_addr % 10 > 8) {
    return;
  }

  blink_bit = action>>2;
  action &= ~(1<<2);


  control_reg_addr = ((led_addr / 10) % 10 - 1 ) * 0x02;
  control_reg_addr += blink_bit == 1 ? 0x12 : 0x00;

  is31_write_register(IS31_FUNCTIONREG, IS31_REG_SHUTDOWN, IS31_REG_SHUTDOWN_ON);
  chThdSleepMilliseconds(5);
  is31_read_register(page, control_reg_addr, &temp);
  is31_write_register(IS31_FUNCTIONREG, IS31_REG_SHUTDOWN, IS31_REG_SHUTDOWN_OFF);

  column_bit = 1<<(led_addr % 10 - 1);
  column_byte = temp;

  switch(action) {
    case 0:
      column_byte &= ~column_bit;
      break;
    case 1:
      column_byte |= column_bit;
      break;
    case 2:
      column_byte ^= column_bit;
      break;
  }


  led_control_word[0] = control_reg_addr;
  led_control_word[1] = column_byte;
  is31_write_data (page, led_control_word, 0x02);
}
