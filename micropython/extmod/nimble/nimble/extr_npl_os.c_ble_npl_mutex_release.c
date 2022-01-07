
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ble_npl_mutex {scalar_t__ locked; } ;
typedef int ble_npl_error_t ;


 int BLE_NPL_OK ;
 int DEBUG_MUTEX_printf (char*,struct ble_npl_mutex*,int ) ;

ble_npl_error_t ble_npl_mutex_release(struct ble_npl_mutex *mu) {
    DEBUG_MUTEX_printf("ble_npl_mutex_release(%p) locked=%u\n", mu, (uint)mu->locked);
    mu->locked = 0;
    return BLE_NPL_OK;
}
