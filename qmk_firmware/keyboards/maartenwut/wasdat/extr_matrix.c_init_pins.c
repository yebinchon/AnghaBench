
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_COLS ;
 int * col_pins ;
 int setPinInputHigh (int ) ;
 int unselect_rows () ;

__attribute__((used)) static void init_pins(void) {
  unselect_rows();
  for (uint8_t x = 0; x < MATRIX_COLS; x++) {
    setPinInputHigh(col_pins[x]);
  }
}
