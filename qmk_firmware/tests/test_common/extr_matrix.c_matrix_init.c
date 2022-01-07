
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_all_keys () ;
 int matrix_init_quantum () ;

void matrix_init(void) {
    clear_all_keys();
    matrix_init_quantum();
}
