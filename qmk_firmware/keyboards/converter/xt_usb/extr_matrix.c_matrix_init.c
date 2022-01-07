
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int debug_enable ;
 int* matrix ;
 int matrix_init_quantum () ;
 int xt_host_init () ;

void matrix_init(void)
{
    debug_enable = 1;
    xt_host_init();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;

    matrix_init_quantum();
}
