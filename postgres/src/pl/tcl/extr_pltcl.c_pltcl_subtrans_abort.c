
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tcl_Interp ;
struct TYPE_5__ {int message; } ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 TYPE_1__* CopyErrorData () ;
 int CurrentResourceOwner ;
 int FlushErrorState () ;
 int FreeErrorData (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int Tcl_NewStringObj (int ,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int UTF_BEGIN ;
 int UTF_E2U (int ) ;
 int UTF_END ;
 int pltcl_construct_errorCode (int *,TYPE_1__*) ;

__attribute__((used)) static void
pltcl_subtrans_abort(Tcl_Interp *interp,
      MemoryContext oldcontext, ResourceOwner oldowner)
{
 ErrorData *edata;


 MemoryContextSwitchTo(oldcontext);
 edata = CopyErrorData();
 FlushErrorState();


 RollbackAndReleaseCurrentSubTransaction();
 MemoryContextSwitchTo(oldcontext);
 CurrentResourceOwner = oldowner;


 pltcl_construct_errorCode(interp, edata);
 UTF_BEGIN;
 Tcl_SetObjResult(interp, Tcl_NewStringObj(UTF_E2U(edata->message), -1));
 UTF_END;
 FreeErrorData(edata);
}
