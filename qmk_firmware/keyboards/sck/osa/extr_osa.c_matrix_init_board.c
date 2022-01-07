
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B6 ;
 int C6 ;
 int C7 ;
 int setPinOutput (int ) ;

void matrix_init_board(void){
    setPinOutput(C7);
    setPinOutput(C6);
    setPinOutput(B6);
}
