
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t ROWS_PER_HAND ;
 int * row_pins ;
 int setPinInputHigh (int ) ;

__attribute__((used)) static void unselect_rows(void) {
  for (uint8_t x = 0; x < ROWS_PER_HAND; x++) {
    setPinInputHigh(row_pins[x]);
  }
}
