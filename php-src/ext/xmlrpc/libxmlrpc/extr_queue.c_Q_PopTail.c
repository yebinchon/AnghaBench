
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; int sorted; TYPE_2__* tail; TYPE_2__* cursor; TYPE_2__* head; } ;
typedef TYPE_1__ queue ;
struct TYPE_7__ {int * next; int * prev; void* data; } ;
typedef TYPE_2__ node ;
typedef int datanode ;


 int False_ ;
 scalar_t__ Q_IsEmpty (TYPE_1__*) ;
 int efree (TYPE_2__*) ;

void *Q_PopTail(queue *q)
{
   datanode *p;
   void *d;

   if(Q_IsEmpty(q))
      return ((void*)0);

   d = q->tail->data;
   p = q->tail->prev;
   efree(q->tail);
   q->size--;

   if(q->size == 0)
      q->head = q->tail = q->cursor = ((void*)0);
   else {
      q->tail = (node *)p;
      q->tail->next = ((void*)0);
      q->cursor = q->tail;
   }

   q->sorted = False_;

   return d;
}
