
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cursor; } ;
typedef TYPE_2__ queue ;
struct TYPE_4__ {void* data; } ;



void *Q_Get(queue *q)
{
   if(!q)
      return ((void*)0);

   if(q->cursor == ((void*)0))
      return ((void*)0);
   return q->cursor->data;
}
