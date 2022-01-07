
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C4 ;
 int C5 ;
 int setPinOutput (int ) ;

void keyboard_pre_init_kb(void) {
    setPinOutput(C4);
    setPinOutput(C5);
}
