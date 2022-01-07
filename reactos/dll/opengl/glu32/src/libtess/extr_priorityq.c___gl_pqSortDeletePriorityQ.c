
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* keys; struct TYPE_4__* order; int * heap; } ;
typedef TYPE_1__ PriorityQ ;


 int __gl_pqHeapDeletePriorityQ (int *) ;
 int assert (int ) ;
 int memFree (TYPE_1__*) ;

void pqDeletePriorityQ( PriorityQ *pq )
{
  assert(pq != ((void*)0));
  if (pq->heap != ((void*)0)) __gl_pqHeapDeletePriorityQ( pq->heap );
  if (pq->order != ((void*)0)) memFree( pq->order );
  if (pq->keys != ((void*)0)) memFree( pq->keys );
  memFree( pq );
}
