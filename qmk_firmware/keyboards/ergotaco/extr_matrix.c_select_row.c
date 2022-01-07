
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COL10 ;
 int COL11 ;
 int COL6 ;
 int COL7 ;
 int COL8 ;
 int COL9 ;
 int DDRB ;
 int DDRD ;
 int ERGODOX_EZ_I2C_TIMEOUT ;
 int GPIOA ;
 int I2C_ADDR_WRITE ;
 int PORTB ;
 int PORTD ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int,int ) ;
 scalar_t__ mcp23018_status ;

__attribute__((used)) static void select_row(uint8_t row)
{
    if (row < 6) {

        if (mcp23018_status) {

        } else {
            mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
            mcp23018_status = i2c_write(GPIOA, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
            mcp23018_status = i2c_write(~(1<<row), ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
        out:
            i2c_stop();
        }
    } else {

        switch (row) {
            case 6:
                DDRB |= COL6;
                PORTB &= ~COL6;
                break;
            case 7:
                DDRB |= COL7;
                PORTB &= ~COL7;
                break;
            case 8:
                DDRB |= COL8;
                PORTB &= ~COL8;
                break;
            case 9:
                DDRB |= COL9;
                PORTB &= ~COL9;
                break;
            case 10:
                DDRD |= COL10;
                PORTD &= ~COL10;
                break;
            case 11:
                DDRD |= COL11;
                PORTD &= ~COL11;
                break;
        }
    }
}
