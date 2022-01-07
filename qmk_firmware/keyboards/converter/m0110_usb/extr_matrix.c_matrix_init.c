
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int* _matrix0 ;
 int m0110_init () ;
 int* matrix ;
 int matrix_init_quantum () ;

void matrix_init(void)
{
    m0110_init();

    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix0[i] = 0x00;
    matrix = _matrix0;

 matrix_init_quantum();
    return;
}
