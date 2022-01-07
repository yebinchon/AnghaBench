
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expander_init () ;
 int matrix_init_kb () ;

__attribute__ ((weak))
void matrix_init_quantum(void) {
    expander_init();
    matrix_init_kb();
}
