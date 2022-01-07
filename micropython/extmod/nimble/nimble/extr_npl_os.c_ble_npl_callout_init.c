
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_eventq {int dummy; } ;
struct ble_npl_callout {int active; struct ble_npl_callout* nextc; int ev; struct ble_npl_eventq* evq; scalar_t__ ticks; } ;
typedef int ble_npl_event_fn ;


 int DEBUG_CALLOUT_printf (char*,struct ble_npl_callout*,struct ble_npl_eventq*,int *,void*) ;
 int ble_npl_event_init (int *,int *,void*) ;
 struct ble_npl_callout* global_callout ;

void ble_npl_callout_init(struct ble_npl_callout *c, struct ble_npl_eventq *evq, ble_npl_event_fn *ev_cb, void *ev_arg) {
    DEBUG_CALLOUT_printf("ble_npl_callout_init(%p, %p, %p, %p)\n", c, evq, ev_cb, ev_arg);
    c->active = 0;
    c->ticks = 0;
    c->evq = evq;
    ble_npl_event_init(&c->ev, ev_cb, ev_arg);

    struct ble_npl_callout **c2;
    for (c2 = &global_callout; *c2 != ((void*)0); c2 = &(*c2)->nextc) {
        if (c == *c2) {

            return;
        }
    }
    *c2 = c;
    c->nextc = ((void*)0);
}
