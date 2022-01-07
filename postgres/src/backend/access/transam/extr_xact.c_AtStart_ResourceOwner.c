
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int * curTransactionOwner; } ;


 int Assert (int ) ;
 int * CurTransactionResourceOwner ;
 int * CurrentResourceOwner ;
 TYPE_1__* CurrentTransactionState ;
 int * ResourceOwnerCreate (int *,char*) ;
 int * TopTransactionResourceOwner ;

__attribute__((used)) static void
AtStart_ResourceOwner(void)
{
 TransactionState s = CurrentTransactionState;




 Assert(TopTransactionResourceOwner == ((void*)0));




 s->curTransactionOwner = ResourceOwnerCreate(((void*)0), "TopTransaction");

 TopTransactionResourceOwner = s->curTransactionOwner;
 CurTransactionResourceOwner = s->curTransactionOwner;
 CurrentResourceOwner = s->curTransactionOwner;
}
