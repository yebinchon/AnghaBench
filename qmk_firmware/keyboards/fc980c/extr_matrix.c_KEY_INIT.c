
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int KEY_HYS_OFF () ;
 int KEY_UNABLE () ;
 int PORTC ;

__attribute__((used)) static inline void KEY_INIT(void)
{

    DDRB |= 0x0F;

    DDRC &= ~(1<<6);
    PORTC |= (1<<6);

    DDRC |= (1<<7);

    DDRD |= 0xF0;

    KEY_UNABLE();
    KEY_HYS_OFF();
}
