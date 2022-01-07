
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long size; int initialized; } ;
typedef TYPE_1__ PriorityQ ;


 int FloatDown (TYPE_1__*,long) ;
 int TRUE ;

void pqInit( PriorityQ *pq )
{
  long i;



  for( i = pq->size; i >= 1; --i ) {
    FloatDown( pq, i );
  }
  pq->initialized = TRUE;
}
