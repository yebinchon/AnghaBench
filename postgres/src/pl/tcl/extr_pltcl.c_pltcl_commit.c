
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_5__ {int message; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;
typedef int ClientData ;


 TYPE_1__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int FlushErrorState () ;
 int FreeErrorData (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int SPI_commit () ;
 int SPI_start_transaction () ;
 int TCL_ERROR ;
 int TCL_OK ;
 int Tcl_NewStringObj (int ,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int UTF_BEGIN ;
 int UTF_E2U (int ) ;
 int UTF_END ;
 int pltcl_construct_errorCode (int *,TYPE_1__*) ;

__attribute__((used)) static int
pltcl_commit(ClientData cdata, Tcl_Interp *interp,
    int objc, Tcl_Obj *const objv[])
{
 MemoryContext oldcontext = CurrentMemoryContext;

 PG_TRY();
 {
  SPI_commit();
  SPI_start_transaction();
 }
 PG_CATCH();
 {
  ErrorData *edata;


  MemoryContextSwitchTo(oldcontext);
  edata = CopyErrorData();
  FlushErrorState();


  pltcl_construct_errorCode(interp, edata);
  UTF_BEGIN;
  Tcl_SetObjResult(interp, Tcl_NewStringObj(UTF_E2U(edata->message), -1));
  UTF_END;
  FreeErrorData(edata);

  return TCL_ERROR;
 }
 PG_END_TRY();

 return TCL_OK;
}
