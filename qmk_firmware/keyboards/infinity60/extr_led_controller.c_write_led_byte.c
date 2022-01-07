
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int is31_write_data (int,int*,int) ;

void write_led_byte (uint8_t page, uint8_t row, uint8_t led_byte) {
  uint8_t led_control_word[2] = {0};

  led_control_word[0] = (row - 1 ) * 0x02;
  led_control_word[1] = led_byte;
  is31_write_data(page, led_control_word, 0x02);
}
