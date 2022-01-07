
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_3__ {scalar_t__ nChildXids; int * childXids; } ;


 TYPE_1__* CurrentTransactionState ;

int
xactGetCommittedChildren(TransactionId **ptr)
{
 TransactionState s = CurrentTransactionState;

 if (s->nChildXids == 0)
  *ptr = ((void*)0);
 else
  *ptr = s->childXids;

 return s->nChildXids;
}
