
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ subTransactionId; struct TYPE_3__* parent; } ;
typedef scalar_t__ SubTransactionId ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ TRANS_ABORT ;

bool
SubTransactionIsActive(SubTransactionId subxid)
{
 TransactionState s;

 for (s = CurrentTransactionState; s != ((void*)0); s = s->parent)
 {
  if (s->state == TRANS_ABORT)
   continue;
  if (s->subTransactionId == subxid)
   return 1;
 }
 return 0;
}
