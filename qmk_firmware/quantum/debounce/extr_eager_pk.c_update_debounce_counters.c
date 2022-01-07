
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ debounce_counter_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ DEBOUNCE_ELAPSED ;
 scalar_t__ MATRIX_COLS ;
 int MAX_DEBOUNCE ;
 scalar_t__ TIMER_DIFF (scalar_t__,scalar_t__,int ) ;
 int counters_need_update ;
 scalar_t__* debounce_counters ;

void update_debounce_counters(uint8_t num_rows, uint8_t current_time) {
    counters_need_update = 0;
    debounce_counter_t *debounce_pointer = debounce_counters;
    for (uint8_t row = 0; row < num_rows; row++) {
        for (uint8_t col = 0; col < MATRIX_COLS; col++) {
            if (*debounce_pointer != DEBOUNCE_ELAPSED) {
                if (TIMER_DIFF(current_time, *debounce_pointer, MAX_DEBOUNCE) >= DEBOUNCE) {
                    *debounce_pointer = DEBOUNCE_ELAPSED;
                } else {
                    counters_need_update = 1;
                }
            }
            debounce_pointer++;
        }
    }
}
