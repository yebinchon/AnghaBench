
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int PORTB ;
 int PORTD ;
 int breathing_disable () ;
 int matrix_init_keymap () ;

void matrix_init_user(void) {
  matrix_init_keymap();
}
