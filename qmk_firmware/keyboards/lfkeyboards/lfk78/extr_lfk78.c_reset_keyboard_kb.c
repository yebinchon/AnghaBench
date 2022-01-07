
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MCUSR ;
 int OCR1A ;
 int OCR1B ;
 int OCR1C ;
 int reset_keyboard () ;
 int wdt_disable () ;
 int wdt_reset () ;

void reset_keyboard_kb(){





    OCR1A = 0x0000;
    OCR1B = 0x0FFF;
    OCR1C = 0x0FFF;
    reset_keyboard();
}
