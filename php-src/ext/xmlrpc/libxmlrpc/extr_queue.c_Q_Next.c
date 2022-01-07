
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* cursor; } ;
typedef TYPE_1__ queue ;
struct TYPE_5__ {void* data; int * next; } ;
typedef TYPE_2__ node ;



void *Q_Next(queue *q)
{
   if(!q)
      return ((void*)0);

   if(!q->cursor || q->cursor->next == ((void*)0))
      return ((void*)0);

   q->cursor = (node *)q->cursor->next;

   return q->cursor->data ;
}
