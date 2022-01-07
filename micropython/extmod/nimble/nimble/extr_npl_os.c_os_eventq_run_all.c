
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_eventq {struct ble_npl_event* head; struct ble_npl_eventq* nextq; } ;
struct ble_npl_event {int (* fn ) (struct ble_npl_event*) ;int * prev; struct ble_npl_event* next; } ;


 int DEBUG_EVENT_printf (char*,struct ble_npl_event*) ;
 struct ble_npl_eventq* global_eventq ;
 int stub1 (struct ble_npl_event*) ;

void os_eventq_run_all(void) {
    for (struct ble_npl_eventq *evq = global_eventq; evq != ((void*)0); evq = evq->nextq) {
        while (evq->head != ((void*)0)) {
            struct ble_npl_event *ev = evq->head;
            evq->head = ev->next;
            if (ev->next) {
                ev->next->prev = ((void*)0);
                ev->next = ((void*)0);
            }
            ev->prev = ((void*)0);
            DEBUG_EVENT_printf("event_run(%p)\n", ev);
            ev->fn(ev);
            DEBUG_EVENT_printf("event_run(%p) done\n", ev);
        }
    }
}
