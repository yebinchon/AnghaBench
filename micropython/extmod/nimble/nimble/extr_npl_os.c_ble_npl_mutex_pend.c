
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ble_npl_mutex {int locked; } ;
typedef scalar_t__ ble_npl_time_t ;
typedef int ble_npl_error_t ;


 int BLE_NPL_OK ;
 int DEBUG_MUTEX_printf (char*,struct ble_npl_mutex*,int ,int ) ;

ble_npl_error_t ble_npl_mutex_pend(struct ble_npl_mutex *mu, ble_npl_time_t timeout) {
    DEBUG_MUTEX_printf("ble_npl_mutex_pend(%p, %u) locked=%u\n", mu, (uint)timeout, (uint)mu->locked);
    mu->locked = 1;
    return BLE_NPL_OK;
}
