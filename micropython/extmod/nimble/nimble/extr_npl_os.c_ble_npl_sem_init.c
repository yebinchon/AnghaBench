
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int uint ;
struct ble_npl_sem {scalar_t__ count; } ;
typedef int ble_npl_error_t ;


 int BLE_NPL_OK ;
 int DEBUG_SEM_printf (char*,struct ble_npl_sem*,int ) ;

ble_npl_error_t ble_npl_sem_init(struct ble_npl_sem *sem, uint16_t tokens) {
    DEBUG_SEM_printf("ble_npl_sem_init(%p, %u)\n", sem, (uint)tokens);
    sem->count = tokens;
    return BLE_NPL_OK;
}
