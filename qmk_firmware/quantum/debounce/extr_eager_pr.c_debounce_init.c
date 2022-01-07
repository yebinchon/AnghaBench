
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int debounce_counter_t ;


 int DEBOUNCE_ELAPSED ;
 int * debounce_counters ;
 scalar_t__ malloc (int) ;

void debounce_init(uint8_t num_rows) {
    debounce_counters = (debounce_counter_t *)malloc(num_rows * sizeof(debounce_counter_t));
    for (uint8_t r = 0; r < num_rows; r++) {
        debounce_counters[r] = DEBOUNCE_ELAPSED;
    }
}
