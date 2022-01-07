
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CS30 ;
 int CS32 ;
 int OCR3AH ;
 int OCR3AL ;
 int SREG ;
 int TCCR3B ;
 int TIMER3_TOP ;
 int WGM32 ;
 int _BV (int ) ;
 int cli () ;

void backlight_timer_init(void)
{
    static uint8_t backlight_timer_is_init = 0;
    if ( backlight_timer_is_init )
    {
        return;
    }
    backlight_timer_is_init = 1;


    TCCR3B = _BV(WGM32) |
             _BV(CS32) | _BV(CS30);

    uint8_t sreg = SREG;
    cli();

    OCR3AH = (TIMER3_TOP >> 8) & 0xff;
    OCR3AL = TIMER3_TOP & 0xff;
    SREG = sreg;
}
