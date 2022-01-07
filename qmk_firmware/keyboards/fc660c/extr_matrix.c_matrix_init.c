
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int DDRB ;
 int KEY_INIT () ;
 size_t MATRIX_ROWS ;
 int PORTB ;
 int* _matrix0 ;
 int* _matrix1 ;
 int* matrix ;
 int matrix_init_quantum () ;
 int* matrix_prev ;

void matrix_init(void)
{
    KEY_INIT();


    DDRB |= (1<<5) | (1<<6);
    PORTB |= (1<<5) | (1<<6);


    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix0[i] = 0x00;
    for (uint8_t i=0; i < MATRIX_ROWS; i++) _matrix1[i] = 0x00;
    matrix = _matrix0;
    matrix_prev = _matrix1;
    matrix_init_quantum();
}
