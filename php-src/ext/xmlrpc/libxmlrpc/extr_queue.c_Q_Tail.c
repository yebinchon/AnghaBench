
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cursor; TYPE_1__* tail; } ;
typedef TYPE_2__ queue ;
struct TYPE_5__ {void* data; } ;


 scalar_t__ Q_IsEmpty (TYPE_2__*) ;

void *Q_Tail(queue *q)
{
   if(Q_IsEmpty(q))
      return ((void*)0);

   q->cursor = q->tail;

   return q->cursor->data;
}
