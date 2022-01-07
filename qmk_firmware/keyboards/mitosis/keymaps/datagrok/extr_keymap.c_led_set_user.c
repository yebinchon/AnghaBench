
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int PORTD ;
 int PORTF ;
 int default_layer_state ;
 int layer_state ;
 int setbits (int ,int,int) ;

void led_set_user(uint8_t usb_leds) {
  uint32_t portf_bits = ((layer_state|default_layer_state)&0b01100000)>>1 | ((layer_state|default_layer_state)&0b00010000)<<1 | ((layer_state|default_layer_state)&0b01000000)>>2;



  uint32_t portd_bits = (usb_leds&0b1)<<5 | ((layer_state|default_layer_state)&0b1000)>>2;



  setbits(PORTF, ~portf_bits, 0b00110000);
  setbits(PORTD, ~portd_bits, 0b00100010);
}
