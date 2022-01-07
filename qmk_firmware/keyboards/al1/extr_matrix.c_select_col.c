
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRD ;
 int PD3 ;
 int PD4 ;
 int PD5 ;
 int PD6 ;
 int PD7 ;
 int PORTD ;

__attribute__((used)) static void select_col(uint8_t col) {
  DDRD |= (1<<PD3 | 1<<PD4 | 1<<PD5 | 1<<PD6 | 1<<PD7);

  PORTD &= ~(1<<PD3);

  if (col & (1<<0)) {
    PORTD |= (1<<PD4);
  }
  else {
    PORTD &= ~(1<<PD4);
  }
  if (col & (1<<1)) {
    PORTD |= (1<<PD5);
  }
  else {
    PORTD &= ~(1<<PD5);
  }
  if (col & (1<<2)) {
    PORTD |= (1<<PD6);
  }
  else {
    PORTD &= ~(1<<PD6);
  }
  if (col & (1<<3)) {
    PORTD |= (1<<PD7);
  }
  else {
    PORTD &= ~(1<<PD7);
  }
}
