
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int KEY_INIT () ;
 size_t MATRIX_ROWS ;
 int* _matrix0 ;
 int* _matrix1 ;
 int debug_enable ;
 int debug_keyboard ;
 int* matrix ;
 int* matrix_prev ;

void matrix_init(void)
{





    KEY_INIT();


    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix0[i] = 0x00;
    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix1[i] = 0x00;
    matrix = _matrix0;
    matrix_prev = _matrix1;
}
