
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oldowner; int oldcontext; } ;
typedef TYPE_1__ PLySubtransactionData ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ explicit_subtransactions ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int list_length (scalar_t__) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
PLy_abort_open_subtransactions(int save_subxact_level)
{
 Assert(save_subxact_level >= 0);

 while (list_length(explicit_subtransactions) > save_subxact_level)
 {
  PLySubtransactionData *subtransactiondata;

  Assert(explicit_subtransactions != NIL);

  ereport(WARNING,
    (errmsg("forcibly aborting a subtransaction that has not been exited")));

  RollbackAndReleaseCurrentSubTransaction();

  subtransactiondata = (PLySubtransactionData *) linitial(explicit_subtransactions);
  explicit_subtransactions = list_delete_first(explicit_subtransactions);

  MemoryContextSwitchTo(subtransactiondata->oldcontext);
  CurrentResourceOwner = subtransactiondata->oldowner;
  pfree(subtransactiondata);
 }
}
