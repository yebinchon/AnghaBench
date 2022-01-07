
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B5 ;
 int B6 ;
 int C6 ;
 int C7 ;
 int F6 ;
 int F7 ;
 scalar_t__ isLeftHand ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;
 int set_layer_indicators (int ) ;

void matrix_init_kb(void) {




 if (isLeftHand)
 {
  setPinOutput(C6);
  setPinOutput(B6);
  setPinOutput(B5);



 }
 else
 {
  setPinOutput(F6);
  setPinOutput(F7);
  setPinOutput(C7);



 }

 set_layer_indicators(0);

 matrix_init_user();
}
