
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ rgb_matrix_enable; scalar_t__ led_level; int raw; } ;


 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int LED_FLAG_ALL ;
 int LED_FLAG_NONE ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int TCCR1A ;
 int TCCR1B ;
 int eeconfig_read_kb () ;
 int ergodox_blink_all_leds () ;
 int ergodox_led_all_set (int) ;
 TYPE_1__ keyboard_config ;
 int matrix_init_user () ;
 int rgb_matrix_set_flags (int ) ;

void matrix_init_kb(void) {

    TCCR1A = 0b10101001;
    TCCR1B = 0b00001001;


    DDRB &= ~(1<<4);
    PORTB &= ~(1<<4);



    DDRC &= ~(1<<7);
    DDRD &= ~(1<<5 | 1<<4);
    DDRE &= ~(1<<6);
    PORTC |= (1<<7);
    PORTD |= (1<<5 | 1<<4);
    PORTE |= (1<<6);

    keyboard_config.raw = eeconfig_read_kb();
    ergodox_led_all_set((uint8_t)keyboard_config.led_level * 255 / 4 );
    ergodox_blink_all_leds();

    matrix_init_user();
}
