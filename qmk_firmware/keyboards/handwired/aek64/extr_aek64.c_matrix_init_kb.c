
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C3 ;
 int wait_ms (int) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void matrix_init_kb(void) {


    writePinHigh(C3);
    wait_ms(1000);
    writePinLow(C3);
}
