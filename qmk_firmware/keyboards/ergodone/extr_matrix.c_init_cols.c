
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int PB4 ;
 int PC6 ;
 int PD2 ;
 int PD3 ;
 int PD4 ;
 int PD7 ;
 int PE6 ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int expander_init () ;

__attribute__((used)) static void init_cols(void)
{

  DDRE &= ~(1<<PE6);
  PORTE |= (1<<PE6);
  DDRD &= ~(1<<PD2 | 1<<PD3 | 1<<PD4 | 1<<PD7);
  PORTD |= (1<<PD2 | 1<<PD3 | 1<<PD4 | 1<<PD7);
  DDRC &= ~(1<<PC6);
  PORTC |= (1<<PC6);
  DDRB &= ~(1<<PB4);
  PORTB |= (1<<PB4);


  expander_init();
}
