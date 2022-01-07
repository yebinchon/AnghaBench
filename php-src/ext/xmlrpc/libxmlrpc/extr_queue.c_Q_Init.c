
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sorted; scalar_t__ size; int head; int cursor; int * tail; } ;
typedef TYPE_1__ queue ;


 int False_ ;
 int True_ ;

int Q_Init(queue *q)
{
   if(q) {
      q->head = q->tail = ((void*)0);
      q->cursor = q->head;
      q->size = 0;
      q->sorted = False_;
   }

   return True_;
}
