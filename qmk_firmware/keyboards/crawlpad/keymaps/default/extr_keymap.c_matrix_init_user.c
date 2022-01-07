
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

void matrix_init_user(void) {

  DDRB |= (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7);
  PORTB &= ~(1 << 4) & ~(1 << 5) & ~(1 << 6) & ~(1 << 7);
}
