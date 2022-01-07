
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
typedef TYPE_1__ queue ;



inline int Q_IsEmpty(queue *q)
{
   return(!q || q->size == 0);
}
