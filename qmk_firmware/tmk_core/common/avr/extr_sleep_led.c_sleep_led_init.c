
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CS10 ;
 int OCR1AH ;
 int OCR1AL ;
 int SLEEP_LED_TIMER_TOP ;
 int SREG ;
 int TCCR1B ;
 int WGM12 ;
 int _BV (int ) ;
 int cli () ;

void sleep_led_init(void) {


    TCCR1B |= _BV(WGM12);

    TCCR1B |= _BV(CS10);

    uint8_t sreg = SREG;
    cli();
    OCR1AH = (SLEEP_LED_TIMER_TOP >> 8) & 0xff;
    OCR1AL = SLEEP_LED_TIMER_TOP & 0xff;
    SREG = sreg;
}
