
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nodes; struct TYPE_4__* handles; } ;
typedef TYPE_1__ PriorityQ ;


 int memFree (TYPE_1__*) ;

void pqDeletePriorityQ( PriorityQ *pq )
{
  memFree( pq->handles );
  memFree( pq->nodes );
  memFree( pq );
}
