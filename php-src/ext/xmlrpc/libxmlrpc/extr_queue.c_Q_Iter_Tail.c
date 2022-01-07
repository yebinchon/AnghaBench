
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tail; } ;
typedef TYPE_1__ queue ;
typedef int * q_iter ;



q_iter Q_Iter_Tail(queue *q) {
   return q ? (q_iter)q->tail : ((void*)0);
}
