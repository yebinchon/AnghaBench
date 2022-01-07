
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int DDRD ;
 int PORTC ;
 int PORTD ;
 int matrix_init_user () ;

void matrix_init_kb(void) {


 DDRC |= (1<<6);
 PORTC &= ~(1<<6);

 DDRD |= (1<<4);
 PORTD &= ~(1<<4);

 matrix_init_user();

}
