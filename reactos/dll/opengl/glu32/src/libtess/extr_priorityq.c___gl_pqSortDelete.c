
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int size; int *** order; int ** keys; int heap; } ;
typedef TYPE_1__ PriorityQ ;
typedef int PQhandle ;


 int __gl_pqHeapDelete (int ,int) ;
 int assert (int) ;

void pqDelete( PriorityQ *pq, PQhandle curr )
{
  if( curr >= 0 ) {
    __gl_pqHeapDelete( pq->heap, curr );
    return;
  }
  curr = -(curr+1);
  assert( curr < pq->max && pq->keys[curr] != ((void*)0) );

  pq->keys[curr] = ((void*)0);
  while( pq->size > 0 && *(pq->order[pq->size-1]) == ((void*)0) ) {
    -- pq->size;
  }
}
