
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_CLR ;
 int lcd_command (int) ;

void lcd_clrscr(void) { lcd_command(1 << LCD_CLR); }
