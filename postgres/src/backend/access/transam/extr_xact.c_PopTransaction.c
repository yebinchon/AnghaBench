
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* name; int curTransactionOwner; struct TYPE_4__* parent; int curTransactionContext; } ;


 int CurTransactionContext ;
 int CurTransactionResourceOwner ;
 int CurrentResourceOwner ;
 TYPE_1__* CurrentTransactionState ;
 int FATAL ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TRANS_DEFAULT ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int elog (int ,char*,...) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PopTransaction(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->state != TRANS_DEFAULT)
  elog(WARNING, "PopTransaction while in %s state",
    TransStateAsString(s->state));

 if (s->parent == ((void*)0))
  elog(FATAL, "PopTransaction with no parent");

 CurrentTransactionState = s->parent;


 CurTransactionContext = s->parent->curTransactionContext;
 MemoryContextSwitchTo(CurTransactionContext);


 CurTransactionResourceOwner = s->parent->curTransactionOwner;
 CurrentResourceOwner = s->parent->curTransactionOwner;


 if (s->name)
  pfree(s->name);
 pfree(s);
}
