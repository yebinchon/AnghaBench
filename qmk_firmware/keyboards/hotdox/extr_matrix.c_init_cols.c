
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int PB0 ;
 int PB1 ;
 int PB2 ;
 int PB3 ;
 int PC6 ;
 int PD2 ;
 int PD3 ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int left_init () ;

__attribute__((used)) static void init_cols(void)
{

  DDRB &= ~(1<<PB0 | 1<<PB1 | 1<<PB2 | 1<<PB3);
  PORTB |= (1<<PB0 | 1<<PB1 | 1<<PB2 | 1<<PB3);

  DDRD &= ~(1<<PD2 | 1<<PD3);
  PORTD |= (1<<PD2 | 1<<PD3);

  DDRC &= ~(1<<PC6);
  PORTC |= (1<<PC6);

  left_init();
}
