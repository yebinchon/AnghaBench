
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * col_pins ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

__attribute__((used)) static void unselect_cols(void) {
    for (uint8_t x = 0; x < 6; x++) {
        setPinOutput(col_pins[x]);
        writePinLow(col_pins[x]);
    }
}
