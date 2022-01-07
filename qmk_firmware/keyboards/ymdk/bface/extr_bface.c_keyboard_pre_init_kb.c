
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D1 ;
 int D4 ;
 int keyboard_pre_init_user () ;
 int setPinOutput (int ) ;

void keyboard_pre_init_kb(void){

    setPinOutput(D1);

    setPinOutput(D4);

    keyboard_pre_init_user();
}
