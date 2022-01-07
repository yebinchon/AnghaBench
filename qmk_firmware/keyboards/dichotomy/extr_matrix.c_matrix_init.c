
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRF ;
 int matrix_init_quantum () ;

void matrix_init(void) {
    DDRF |= (1<<6);
    DDRF |= (1<<5);
    DDRD |= (1<<1);
    matrix_init_quantum();
}
