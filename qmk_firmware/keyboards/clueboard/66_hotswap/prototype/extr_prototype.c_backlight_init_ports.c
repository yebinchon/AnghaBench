
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int PORTD ;
 int print (char*) ;

void backlight_init_ports(void) {
    print("init_backlight_pin()\n");

    DDRD |= (1<<0);
    DDRD |= (1<<4);
    DDRD |= (1<<1);


    PORTD &= ~(1<<0);
    PORTD &= ~(1<<4);
    PORTD &= ~(1<<1);
}
