
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRF ;
 int PORTD ;
 int PORTF ;
 int rn42_autoconnect () ;
 int serial_init () ;

void rn42_init(void)
{

    rn42_autoconnect();


    DDRF &= ~(1<<6);
    PORTF |= (1<<6);


    DDRF &= ~(1<<1);
    PORTF &= ~(1<<1);


    DDRD |= (1<<5);
    PORTD &= ~(1<<5);

    serial_init();
}
