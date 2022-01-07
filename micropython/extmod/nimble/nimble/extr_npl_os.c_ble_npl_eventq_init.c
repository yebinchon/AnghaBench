
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_npl_eventq {struct ble_npl_eventq* nextq; int * head; } ;


 int DEBUG_EVENT_printf (char*,struct ble_npl_eventq*) ;
 struct ble_npl_eventq* global_eventq ;

void ble_npl_eventq_init(struct ble_npl_eventq *evq) {
    DEBUG_EVENT_printf("ble_npl_eventq_init(%p)\n", evq);
    evq->head = ((void*)0);
    struct ble_npl_eventq **evq2;
    for (evq2 = &global_eventq; *evq2 != ((void*)0); evq2 = &(*evq2)->nextq) {
    }
    *evq2 = evq;
    evq->nextq = ((void*)0);
}
