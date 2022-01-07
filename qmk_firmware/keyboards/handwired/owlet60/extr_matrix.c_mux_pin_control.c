
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int * col_select_pins ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

__attribute__((used)) static void mux_pin_control(const uint8_t binary[]) {

    setPinOutput(col_select_pins[0]);
    if(binary[2] == 0) {
        writePinLow(col_select_pins[0]);
    }
    else {
        writePinHigh(col_select_pins[0]);
    }

    setPinOutput(col_select_pins[1]);
    if(binary[1] == 0) {
        writePinLow(col_select_pins[1]);
    }
    else {
        writePinHigh(col_select_pins[1]);
    }

    setPinOutput(col_select_pins[2]);
    if(binary[0] == 0) {
        writePinLow(col_select_pins[2]);
    }
    else {
        writePinHigh(col_select_pins[2]);
    }
}
