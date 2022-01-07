
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_sem {int count; } ;
typedef int ble_npl_error_t ;


 int BLE_NPL_OK ;
 int DEBUG_SEM_printf (char*,struct ble_npl_sem*) ;

ble_npl_error_t ble_npl_sem_release(struct ble_npl_sem *sem) {
    DEBUG_SEM_printf("ble_npl_sem_release(%p)\n", sem);
    sem->count += 1;
    return BLE_NPL_OK;
}
