
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_eventq {struct ble_npl_event* head; } ;
struct ble_npl_event {struct ble_npl_event* prev; struct ble_npl_event* next; int arg; int fn; } ;


 int DEBUG_EVENT_printf (char*,...) ;

void ble_npl_eventq_put(struct ble_npl_eventq *evq, struct ble_npl_event *ev) {
    DEBUG_EVENT_printf("ble_npl_eventq_put(%p, %p (%p, %p))\n", evq, ev, ev->fn, ev->arg);
    ev->next = ((void*)0);
    if (evq->head == ((void*)0)) {
        evq->head = ev;
        ev->prev = ((void*)0);
    } else {
        struct ble_npl_event *ev2 = evq->head;
        while (1) {
            if (ev2 == ev) {
                DEBUG_EVENT_printf("  --> already in queue\n");
                return;
            }
            if (ev2->next == ((void*)0)) {
                break;
            }
            DEBUG_EVENT_printf("  --> %p\n", ev2->next);
            ev2 = ev2->next;
        }
        ev2->next = ev;
        ev->prev = ev2;
    }
}
