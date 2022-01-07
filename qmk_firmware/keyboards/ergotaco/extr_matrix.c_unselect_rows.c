
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMASK ;
 int DDRB ;
 int DDRD ;
 int DMASK ;
 int PORTB ;
 int PORTD ;

__attribute__((used)) static void unselect_rows(void)
{




    DDRB &= ~BMASK;
    PORTB &= ~BMASK;
    DDRD &= ~DMASK;
    PORTD &= ~DMASK;
}
