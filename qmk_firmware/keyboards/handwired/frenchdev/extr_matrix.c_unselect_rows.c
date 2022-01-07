
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int GPIOA ;
 int I2C_ADDR_WRITE ;
 int I2C_TIMEOUT ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int,int ) ;
 scalar_t__ mcp23018_status ;

__attribute__((used)) static void unselect_rows(void)
{

    if (mcp23018_status) {

    } else {

        mcp23018_status = i2c_start(I2C_ADDR_WRITE, I2C_TIMEOUT); if (mcp23018_status) goto out;
        mcp23018_status = i2c_write(GPIOA, I2C_TIMEOUT); if (mcp23018_status) goto out;
        mcp23018_status = i2c_write( 0xFF & ~(0<<8), I2C_TIMEOUT); if (mcp23018_status) goto out;
    out:
        i2c_stop();
    }



    DDRB &= ~(1<<0 | 1<<1 | 1<<2 | 1<<3);
    PORTB &= ~(1<<0 | 1<<1 | 1<<2 | 1<<3);
    DDRD &= ~(1<<2 | 1<<3);
    PORTD &= ~(1<<2 | 1<<3);
    DDRC &= ~(1<<6 | 1<<7);
    PORTC &= ~(1<<6 | 1<<7);
}
