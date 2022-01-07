
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ maxChildXids; scalar_t__ nChildXids; int * childXids; } ;


 TYPE_1__* CurrentTransactionState ;
 int pfree (int *) ;

__attribute__((used)) static void
AtSubAbort_childXids(void)
{
 TransactionState s = CurrentTransactionState;






 if (s->childXids != ((void*)0))
  pfree(s->childXids);
 s->childXids = ((void*)0);
 s->nChildXids = 0;
 s->maxChildXids = 0;







}
