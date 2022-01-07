
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRF ;
 int PB1 ;
 int PB2 ;
 int PF4 ;
 int PF5 ;
 int PF6 ;
 int PF7 ;
 int PORTB ;
 int PORTF ;
 int expander_unselect_rows () ;

__attribute__((used)) static void unselect_rows(void)
{

  DDRF &= ~(1<<PF4 | 1<<PF5 | 1<<PF6 | 1<<PF7);
  PORTF &= ~(1<<PF4 | 1<<PF5 | 1<<PF6 | 1<<PF7);
  DDRB &= ~(1<<PB1 | 1<<PB2);
  PORTB &= ~(1<<PB1 | 1<<PB2);


  expander_unselect_rows();
}
