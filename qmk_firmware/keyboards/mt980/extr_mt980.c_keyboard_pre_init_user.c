
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B5 ;
 int C6 ;
 int C7 ;
 int setPinOutput (int ) ;

void keyboard_pre_init_user(void) {

  setPinOutput(C6);

  setPinOutput(C7);

  setPinOutput(B5);
}
