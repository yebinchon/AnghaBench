
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int sorted; TYPE_2__* tail; TYPE_2__* cursor; TYPE_2__* head; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {void* data; struct TYPE_5__* next; int * prev; } ;
typedef TYPE_2__ node ;
typedef int datanode ;


 int False_ ;
 int True_ ;
 int * emalloc (int) ;

int Q_PushTail(queue *q, void *d)
{
   if(q && d) {
      node *p;
      datanode *n;

      n = emalloc(sizeof(datanode));
      if(n == ((void*)0))
         return False_;

      p = q->tail;
      q->tail = (node *)n;

      if(q->size == 0) {
         q->tail->prev = ((void*)0);
         q->head = q->tail;
      }
      else {
         q->tail->prev = (datanode *)p;
         p->next = q->tail;
      }

      q->tail->next = ((void*)0);

      q->tail->data = d;
      q->cursor = q->tail;
      q->size++;

      q->sorted = False_;

      return True_;
   }
   return False_;
}
