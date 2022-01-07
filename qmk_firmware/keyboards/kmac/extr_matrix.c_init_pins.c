
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int E2 ;
 size_t MATRIX_ROWS ;
 int * row_pins ;
 int setPinInput (int ) ;
 int setPinInputHigh (int ) ;
 int unselect_cols () ;

__attribute__((used)) static void init_pins(void) {
    unselect_cols();
    for (uint8_t x = 0; x < MATRIX_ROWS; x++) {
        setPinInput(row_pins[x]);
    }

    setPinInputHigh(E2);
}
