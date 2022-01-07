
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int PB0 ;
 int PB3 ;
 int PB5 ;
 int PB6 ;
 int PORTB ;
 int PORTD ;

void ergodox_led_init(void)
 {
     DDRB |= (1<<PB5 | 1<<PB6 | 1<<PB3);
     PORTB &= ~(1<<PB5 | 1<<PB6 | 1<<PB3);
     DDRB |= (1<<PB0);
     PORTB |= (1<<PB0);
     DDRD |= (1<<PB5);
     PORTD |= (1<<PB5);
}
