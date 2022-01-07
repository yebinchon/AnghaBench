
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {int curTransactionOwner; TYPE_1__* parent; } ;
struct TYPE_4__ {int curTransactionOwner; } ;


 int Assert (int ) ;
 int CurTransactionResourceOwner ;
 int CurrentResourceOwner ;
 TYPE_2__* CurrentTransactionState ;
 int ResourceOwnerCreate (int ,char*) ;

__attribute__((used)) static void
AtSubStart_ResourceOwner(void)
{
 TransactionState s = CurrentTransactionState;

 Assert(s->parent != ((void*)0));





 s->curTransactionOwner =
  ResourceOwnerCreate(s->parent->curTransactionOwner,
       "SubTransaction");

 CurTransactionResourceOwner = s->curTransactionOwner;
 CurrentResourceOwner = s->curTransactionOwner;
}
