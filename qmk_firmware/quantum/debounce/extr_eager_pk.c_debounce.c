
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 int MAX_DEBOUNCE ;
 scalar_t__ counters_need_update ;
 scalar_t__ matrix_need_update ;
 int timer_read () ;
 int transfer_matrix_values (int *,int *,int,int) ;
 int update_debounce_counters (int,int) ;

void debounce(matrix_row_t raw[], matrix_row_t cooked[], uint8_t num_rows, bool changed) {
    uint8_t current_time = timer_read() % MAX_DEBOUNCE;
    if (counters_need_update) {
        update_debounce_counters(num_rows, current_time);
    }

    if (changed || matrix_need_update) {
        transfer_matrix_values(raw, cooked, num_rows, current_time);
    }
}
