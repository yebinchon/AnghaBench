
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int led_init_ports () ;
 int set_layer_led (int ) ;

void matrix_init_user(void) {
 led_init_ports();

 PORTB |= (1 << 7);
 DDRB &= ~(1<<7);

 PORTD |= (1<<7);
 PORTC |= (1<<6);
 PORTC |= (1<<7);
 PORTD |= (1<<4);
 PORTE |= (1<<6);
 PORTB |= (1<<4);
 PORTD |= (1<<6);

 set_layer_led(0);
}
