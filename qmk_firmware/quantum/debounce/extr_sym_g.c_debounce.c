
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 int debouncing ;
 int debouncing_time ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

void debounce(matrix_row_t raw[], matrix_row_t cooked[], uint8_t num_rows, bool changed) {
    if (changed) {
        debouncing = 1;
        debouncing_time = timer_read();
    }

    if (debouncing && timer_elapsed(debouncing_time) > DEBOUNCE) {
        for (int i = 0; i < num_rows; i++) {
            cooked[i] = raw[i];
        }
        debouncing = 0;
    }
}
