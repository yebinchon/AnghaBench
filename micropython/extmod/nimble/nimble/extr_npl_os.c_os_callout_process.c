
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint ;
struct TYPE_3__ {int (* fn ) (TYPE_1__*) ;} ;
struct ble_npl_callout {int active; TYPE_1__ ev; scalar_t__ evq; scalar_t__ ticks; struct ble_npl_callout* nextc; } ;
typedef scalar_t__ int32_t ;


 int DEBUG_CALLOUT_printf (char*,struct ble_npl_callout*,...) ;
 int ble_npl_eventq_put (scalar_t__,TYPE_1__*) ;
 struct ble_npl_callout* global_callout ;
 scalar_t__ mp_hal_ticks_ms () ;
 int stub1 (TYPE_1__*) ;

void os_callout_process(void) {
    uint32_t tnow = mp_hal_ticks_ms();
    for (struct ble_npl_callout *c = global_callout; c != ((void*)0); c = c->nextc) {
        if (!c->active) {
            continue;
        }
        if ((int32_t)(tnow - c->ticks) >= 0) {
            DEBUG_CALLOUT_printf("callout_run(%p) tnow=%u ticks=%u evq=%p\n", c, (uint)tnow, (uint)c->ticks, c->evq);
            c->active = 0;
            if (c->evq) {
                ble_npl_eventq_put(c->evq, &c->ev);
            } else {
                c->ev.fn(&c->ev);
            }
            DEBUG_CALLOUT_printf("callout_run(%p) done\n", c);
        }
    }
}
