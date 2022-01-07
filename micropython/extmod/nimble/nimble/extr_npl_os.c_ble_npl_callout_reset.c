
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ble_npl_callout {int active; scalar_t__ ticks; } ;
typedef scalar_t__ ble_npl_time_t ;
typedef int ble_npl_error_t ;


 int BLE_NPL_OK ;
 int DEBUG_CALLOUT_printf (char*,struct ble_npl_callout*,int ,int ) ;
 scalar_t__ ble_npl_time_get () ;
 scalar_t__ mp_hal_ticks_ms () ;

ble_npl_error_t ble_npl_callout_reset(struct ble_npl_callout *c, ble_npl_time_t ticks) {
    DEBUG_CALLOUT_printf("ble_npl_callout_reset(%p, %u) tnow=%u\n", c, (uint)ticks, (uint)mp_hal_ticks_ms());
    c->active = 1;
    c->ticks = ble_npl_time_get() + ticks;
    return BLE_NPL_OK;
}
