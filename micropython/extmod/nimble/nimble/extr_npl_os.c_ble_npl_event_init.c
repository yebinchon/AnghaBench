
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_event {int * next; void* arg; int * fn; } ;
typedef int ble_npl_event_fn ;


 int DEBUG_EVENT_printf (char*,struct ble_npl_event*,int *,void*) ;

void ble_npl_event_init(struct ble_npl_event *ev, ble_npl_event_fn *fn, void *arg) {
    DEBUG_EVENT_printf("ble_npl_event_init(%p, %p, %p)\n", ev, fn, arg);
    ev->fn = fn;
    ev->arg = arg;
    ev->next = ((void*)0);
}
