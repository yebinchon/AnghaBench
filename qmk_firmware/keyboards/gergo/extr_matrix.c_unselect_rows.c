
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMASK ;
 int CMASK ;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DMASK ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int TRKMASK ;

__attribute__((used)) static void unselect_rows(void)
{




    DDRB &= ~(BMASK | TRKMASK);
    PORTB &= ~(BMASK);
    DDRC &= ~CMASK;
    PORTC &= ~CMASK;
    DDRD &= ~DMASK;
    PORTD &= ~DMASK;


    PORTB |= TRKMASK;
}
