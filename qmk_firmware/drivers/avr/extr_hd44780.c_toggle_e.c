
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_e_delay () ;
 int lcd_e_high () ;
 int lcd_e_low () ;

__attribute__((used)) static void toggle_e(void) {
    lcd_e_high();
    lcd_e_delay();
    lcd_e_low();
}
