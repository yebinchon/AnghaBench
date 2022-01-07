
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LCD_BUSY ;
 int LCD_DELAY_BUSY_FLAG ;
 int delay (int ) ;
 int lcd_read (int ) ;

__attribute__((used)) static uint8_t lcd_waitbusy(void)

{
    register uint8_t c;


    while ((c = lcd_read(0)) & (1 << LCD_BUSY)) {
    }


    delay(LCD_DELAY_BUSY_FLAG);


    return (lcd_read(0));

}
