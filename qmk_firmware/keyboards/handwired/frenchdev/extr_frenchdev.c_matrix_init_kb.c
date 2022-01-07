
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRE ;
 int PORTD ;
 int PORTE ;
 int TCCR1A ;
 int TCCR1B ;
 int frenchdev_blink_all_leds () ;
 int matrix_init_user () ;

void matrix_init_kb(void) {

    TCCR1A = 0b10101001;
    TCCR1B = 0b00001001;





    DDRD &= ~(1<<5 | 1<<4);
    DDRE &= ~(1<<6);
    PORTD |= (1<<5 | 1<<4);
    PORTE |= (1<<6);

    frenchdev_blink_all_leds();
    frenchdev_blink_all_leds();
    frenchdev_blink_all_leds();
    frenchdev_blink_all_leds();

    matrix_init_user();
}
