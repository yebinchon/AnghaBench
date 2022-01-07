
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int lcd_waitbusy () ;
 int lcd_write (int ,int ) ;

void lcd_command(uint8_t cmd) {
    lcd_waitbusy();
    lcd_write(cmd, 0);
}
