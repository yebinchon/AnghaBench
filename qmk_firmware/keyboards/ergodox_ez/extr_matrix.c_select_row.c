
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int DDRC ;
 int DDRD ;
 int ERGODOX_EZ_I2C_TIMEOUT ;
 int GPIOA ;
 int I2C_ADDR_WRITE ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int,int ) ;
 scalar_t__ mcp23018_status ;

__attribute__((used)) static void select_row(uint8_t row) {
  if (row < 7) {

    if (mcp23018_status) {

    } else {


      mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT);
      if (mcp23018_status) goto out;
      mcp23018_status = i2c_write(GPIOA, ERGODOX_EZ_I2C_TIMEOUT);
      if (mcp23018_status) goto out;
      mcp23018_status = i2c_write(0xFF & ~(1 << row), ERGODOX_EZ_I2C_TIMEOUT);
      if (mcp23018_status) goto out;
    out:
      i2c_stop();
    }
  } else {


    switch (row) {
      case 7:
        DDRB |= (1 << 0);
        PORTB &= ~(1 << 0);
        break;
      case 8:
        DDRB |= (1 << 1);
        PORTB &= ~(1 << 1);
        break;
      case 9:
        DDRB |= (1 << 2);
        PORTB &= ~(1 << 2);
        break;
      case 10:
        DDRB |= (1 << 3);
        PORTB &= ~(1 << 3);
        break;
      case 11:
        DDRD |= (1 << 2);
        PORTD &= ~(1 << 2);
        break;
      case 12:
        DDRD |= (1 << 3);
        PORTD &= ~(1 << 3);
        break;
      case 13:
        DDRC |= (1 << 6);
        PORTC &= ~(1 << 6);
        break;
    }
  }
}
