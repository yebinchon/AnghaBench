
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; int data; } ;
typedef TYPE_1__ spl_pqueue_elem ;


 int Z_TRY_ADDREF_P (int *) ;

__attribute__((used)) static void spl_ptr_heap_pqueue_elem_ctor(void *elem) {
 spl_pqueue_elem *pq_elem = elem;
 Z_TRY_ADDREF_P(&pq_elem->data);
 Z_TRY_ADDREF_P(&pq_elem->priority);
}
