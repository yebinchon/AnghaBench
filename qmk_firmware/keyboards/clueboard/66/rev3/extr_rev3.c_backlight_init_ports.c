
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int PORTB ;
 int PORTD ;
 int print (char*) ;

void backlight_init_ports(void) {
    print("init_backlight_pin()\n");

    DDRD |= (1<<6);
    DDRB |= (1<<7);
    DDRD |= (1<<4);


    PORTD &= ~(1<<6);
    PORTB &= ~(1<<7);
    PORTD &= ~(1<<4);
}
