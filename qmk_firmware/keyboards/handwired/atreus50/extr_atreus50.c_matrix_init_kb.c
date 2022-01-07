
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTE ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



    PORTE |= (1<<6);

 matrix_init_user();
}
