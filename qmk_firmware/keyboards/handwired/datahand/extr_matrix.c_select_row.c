
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTB ;
 int PORTD ;
 int PORTE ;

__attribute__((used)) static void select_row(uint8_t row) {




  if (row & (1<<0)) {
    PORTE |= (1<<6);
  } else {
    PORTE &= ~(1<<6);
  }

  if (row & (1<<1)) {
    PORTB |= (1<<7);
  } else {
    PORTB &= ~(1<<7);
  }

  if (row & (1<<2)) {
    PORTD |= (1<<0);
  } else {
    PORTD &= ~(1<<0);
  }

  if (row & (1<<3)) {
    PORTD |= (1<<1);
  } else {
    PORTD &= ~(1<<1);
  }
}
