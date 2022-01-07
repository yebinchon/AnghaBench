
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int internal_xact; scalar_t__ atomic; } ;
typedef int MemoryContext ;


 int AbortCurrentTransaction () ;
 int CurrentMemoryContext ;
 int ERRCODE_INVALID_TRANSACTION_TERMINATION ;
 int ERROR ;
 int HoldPinnedPortals () ;
 scalar_t__ IsSubTransaction () ;
 int MemoryContextSwitchTo (int ) ;
 int RestoreTransactionCharacteristics () ;
 int SaveTransactionCharacteristics () ;
 int StartTransactionCommand () ;
 TYPE_1__* _SPI_current ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
_SPI_rollback(bool chain)
{
 MemoryContext oldcontext = CurrentMemoryContext;

 if (_SPI_current->atomic)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_TERMINATION),
     errmsg("invalid transaction termination")));


 if (IsSubTransaction())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_TERMINATION),
     errmsg("cannot roll back while a subtransaction is active")));







 HoldPinnedPortals();


 _SPI_current->internal_xact = 1;

 if (chain)
  SaveTransactionCharacteristics();

 AbortCurrentTransaction();

 if (chain)
 {
  StartTransactionCommand();
  RestoreTransactionCharacteristics();
 }

 MemoryContextSwitchTo(oldcontext);

 _SPI_current->internal_xact = 0;
}
