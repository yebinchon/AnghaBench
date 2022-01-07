
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursor; scalar_t__ head; } ;
typedef TYPE_1__ queue ;



int Q_AtHead(queue *q)
{
   return(q && q->cursor == q->head);
}
