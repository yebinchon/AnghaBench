
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LCD_DDRAM ;
 scalar_t__ LCD_START_LINE1 ;
 scalar_t__ LCD_START_LINE2 ;
 scalar_t__ LCD_START_LINE3 ;
 scalar_t__ LCD_START_LINE4 ;
 int lcd_command (scalar_t__) ;

__attribute__((used)) static inline void lcd_newline(uint8_t pos) {
    register uint8_t addressCounter;
    lcd_command((1 << LCD_DDRAM) + addressCounter);

}
