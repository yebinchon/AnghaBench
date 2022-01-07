
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int RCC_SR; } ;


 int* BL_STATE ;
 TYPE_1__* RCC ;
 int RCC_SR_RMVF ;
 int RCC_SR_SFTRSTF ;
 int __HAL_SYSCFG_REMAPMEMORY_SYSTEMFLASH () ;
 int branch_to_bootloader (int,int) ;

void powerctrl_check_enter_bootloader(void) {
    uint32_t bl_addr = BL_STATE[1];
    BL_STATE[1] = 1;
    if ((bl_addr & 0xfff) == 0 && (RCC->RCC_SR & RCC_SR_SFTRSTF)) {

        RCC->RCC_SR = RCC_SR_RMVF;



        uint32_t r0 = BL_STATE[0];
        branch_to_bootloader(r0, bl_addr);
    }
}
