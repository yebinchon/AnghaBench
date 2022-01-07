
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LBF_DFU_If_Needed () ;

void LIMIFROG_board_early_init(void) {
    LBF_DFU_If_Needed();
}
