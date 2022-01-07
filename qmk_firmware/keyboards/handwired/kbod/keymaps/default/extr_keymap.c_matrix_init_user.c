
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int PB0 ;
 int PC7 ;
 int _BV (int ) ;

void matrix_init_user(void) {
  DDRB |= _BV(PB0);
  DDRC |= _BV(PC7);
}
