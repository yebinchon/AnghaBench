
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int PORTD ;
 int matrix_init_user () ;

void matrix_init_kb(void) {


    DDRD |= (1<<6);
    PORTD |= (1<<6);

    matrix_init_user();
}
