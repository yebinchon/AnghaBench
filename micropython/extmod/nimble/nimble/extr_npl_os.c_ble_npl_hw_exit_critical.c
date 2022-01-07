
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint ;


 int DEBUG_CRIT_printf (char*,int ) ;
 int restore_irq_pri (scalar_t__) ;

void ble_npl_hw_exit_critical(uint32_t ctx) {
    DEBUG_CRIT_printf("ble_npl_hw_exit_critical(%u)\n", (uint)ctx);
    restore_irq_pri(ctx);
}
