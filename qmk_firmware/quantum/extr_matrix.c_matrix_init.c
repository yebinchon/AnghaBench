
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int debounce_init (size_t) ;
 int init_pins () ;
 scalar_t__* matrix ;
 int matrix_init_quantum () ;
 scalar_t__* raw_matrix ;

void matrix_init(void) {

    init_pins();


    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        raw_matrix[i] = 0;
        matrix[i] = 0;
    }

    debounce_init(MATRIX_ROWS);

    matrix_init_quantum();
}
