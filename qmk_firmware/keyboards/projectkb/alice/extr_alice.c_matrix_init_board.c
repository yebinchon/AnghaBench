
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A0 ;
 int A1 ;
 int A2 ;
 int setPinOutput (int ) ;

void matrix_init_board(void){
    setPinOutput(A0);
    setPinOutput(A1);
    setPinOutput(A2);
}
