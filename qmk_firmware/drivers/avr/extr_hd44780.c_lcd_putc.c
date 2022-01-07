
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LCD_DDRAM ;
 scalar_t__ LCD_DISP_LENGTH ;
 scalar_t__ LCD_START_LINE1 ;
 scalar_t__ LCD_START_LINE2 ;
 scalar_t__ LCD_START_LINE3 ;
 scalar_t__ LCD_START_LINE4 ;
 int lcd_newline (scalar_t__) ;
 scalar_t__ lcd_waitbusy () ;
 int lcd_write (char,int) ;

void lcd_putc(char c) {
    uint8_t pos;

    pos = lcd_waitbusy();
    if (c == '\n') {
        lcd_newline(pos);
    } else {
        lcd_write(c, 1);
    }

}
