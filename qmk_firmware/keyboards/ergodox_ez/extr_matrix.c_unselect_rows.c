
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int PORTB ;
 int PORTC ;
 int PORTD ;

__attribute__((used)) static void unselect_rows(void) {






  DDRB &= ~(1 << 0 | 1 << 1 | 1 << 2 | 1 << 3);
  PORTB &= ~(1 << 0 | 1 << 1 | 1 << 2 | 1 << 3);
  DDRD &= ~(1 << 2 | 1 << 3);
  PORTD &= ~(1 << 2 | 1 << 3);
  DDRC &= ~(1 << 6);
  PORTC &= ~(1 << 6);
}
