
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tail; int * head; int lock; } ;
typedef TYPE_1__ CQ ;


 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void cq_init(CQ *cq) {
    pthread_mutex_init(&cq->lock, ((void*)0));
    cq->head = ((void*)0);
    cq->tail = ((void*)0);
}
