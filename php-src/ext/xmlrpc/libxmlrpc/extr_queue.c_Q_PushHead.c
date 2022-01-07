
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int sorted; TYPE_2__* head; TYPE_2__* cursor; TYPE_2__* tail; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {void* data; struct TYPE_5__* prev; int * next; } ;
typedef TYPE_2__ node ;
typedef int datanode ;


 int False_ ;
 int True_ ;
 int * emalloc (int) ;

int Q_PushHead(queue *q, void *d)
{
   if(q && d) {
      node *n;
      datanode *p;

      p = emalloc(sizeof(datanode));
      if(p == ((void*)0))
         return False_;

      n = q->head;

      q->head = (node*)p;
      q->head->prev = ((void*)0);

      if(q->size == 0) {
         q->head->next = ((void*)0);
         q->tail = q->head;
      }
      else {
         q->head->next = (datanode*)n;
         n->prev = q->head;
      }

      q->head->data = d;
      q->size++;

      q->cursor = q->head;

      q->sorted = False_;

      return True_;
   }
   return False_;
}
