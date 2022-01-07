
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sorted; int size; TYPE_2__* cursor; scalar_t__ tail; scalar_t__ head; } ;
typedef TYPE_1__ queue ;
typedef int * q_iter ;
struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; void* data; } ;
typedef TYPE_2__ node ;
typedef TYPE_2__ datanode ;


 int False_ ;
 void* Q_PopHead (TYPE_1__*) ;
 void* Q_PopTail (TYPE_1__*) ;
 int efree (int *) ;

void *Q_Iter_Del(queue *q, q_iter iter)
{
   void *d;
   datanode *n, *p;

   if(!q)
      return ((void*)0);

   if(iter == ((void*)0))
      return ((void*)0);

   if(iter == (q_iter)q->head)
      return Q_PopHead(q);

   if(iter == (q_iter)q->tail)
      return Q_PopTail(q);

   n = ((node*)iter)->next;
   p = ((node*)iter)->prev;
   d = ((node*)iter)->data;

   efree(iter);

   if(p) {
      p->next = n;
   }
   if (q->cursor == (node*)iter) {
      if (p) {
         q->cursor = p;
      } else {
         q->cursor = n;
      }
   }


   if (n != ((void*)0)) {
 n->prev = p;
   }

   q->size--;

   q->sorted = False_;

   return d;
}
