
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int I2C_ADDR (int) ;
 int I2C_TIMEOUT ;
 int LEFT ;
 int RIGHT ;
 int TWI_CMD_LED_SET_ONE_TO ;
 int _delay_us (int) ;
 int i2c_transmit (int ,int*,int,int ) ;

void set_led_to(int led, uint8_t r, uint8_t g, uint8_t b) {
  uint8_t buf[] = {
    TWI_CMD_LED_SET_ONE_TO,
    led & 0x1f,
    b, g, r
  };
  int hand = (led >= 32) ? RIGHT : LEFT;
  i2c_transmit(I2C_ADDR(hand), buf, sizeof(buf), I2C_TIMEOUT);
  _delay_us(10);
}
