
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D1 ;
 int D2 ;
 int D3 ;
 int D5 ;
 int setPinOutput (int ) ;

void keyboard_pre_init_user(void) {



  setPinOutput(D5);
  setPinOutput(D3);
  setPinOutput(D2);
  setPinOutput(D1);
}
