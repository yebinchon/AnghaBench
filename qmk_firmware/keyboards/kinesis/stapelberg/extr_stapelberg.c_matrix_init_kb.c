
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int matrix_init_user () ;

void matrix_init_kb(void) {



    DDRF |= (1<<0);
    DDRF |= (1<<1);
    DDRF |= (1<<2);
    DDRF |= (1<<3);

 matrix_init_user();
}
