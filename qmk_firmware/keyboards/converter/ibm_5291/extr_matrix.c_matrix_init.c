
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_ROWS ;
 int init_cols () ;
 int init_data () ;
 int init_led () ;
 int init_rows () ;
 int init_strobe () ;
 scalar_t__* matrix ;
 scalar_t__* matrix_debounce ;
 int matrix_init_quantum () ;

void matrix_init(void) {
    init_led() ;
    init_rows() ;
    init_cols() ;
    init_data() ;
    init_strobe() ;


    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;



    }

    matrix_init_quantum() ;
}
