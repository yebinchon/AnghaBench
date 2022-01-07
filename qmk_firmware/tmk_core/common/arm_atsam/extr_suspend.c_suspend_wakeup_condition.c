
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 scalar_t__ matrix_get_row (scalar_t__) ;
 int matrix_power_down () ;
 int matrix_power_up () ;
 int matrix_scan () ;

bool suspend_wakeup_condition(void) {
    matrix_power_up();
    matrix_scan();
    matrix_power_down();
    for (uint8_t r = 0; r < MATRIX_ROWS; r++) {
        if (matrix_get_row(r)) return 1;
    }
    return 0;
}
