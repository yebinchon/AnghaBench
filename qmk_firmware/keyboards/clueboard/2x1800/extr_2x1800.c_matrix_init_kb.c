
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int matrix_init_user () ;

void matrix_init_kb(void) {

 DDRB |= (1<<4);
 DDRB |= (1<<5);
 DDRB |= (1<<6);


 matrix_init_user();
}
