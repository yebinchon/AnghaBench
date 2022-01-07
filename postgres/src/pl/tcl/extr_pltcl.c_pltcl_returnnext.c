
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int result_typioparam; int result_in_func; scalar_t__ fn_retistuple; int fn_retisset; } ;
typedef TYPE_1__ pltcl_proc_desc ;
struct TYPE_8__ {TYPE_3__* ret_tupdesc; int * tuple_store; TYPE_1__* prodesc; int * fcinfo; } ;
typedef TYPE_2__ pltcl_call_state ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_9__ {int natts; } ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int * FunctionCallInfo ;
typedef int Datum ;
typedef int ClientData ;


 int BeginInternalSubTransaction (int *) ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERROR ;
 int InputFunctionCall (int *,int ,int ,int) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int TCL_ERROR ;
 int TCL_OK ;
 scalar_t__ Tcl_GetString (int * const) ;
 int Tcl_ListObjGetElements (int *,int * const,int*,int ***) ;
 int Tcl_NewStringObj (char*,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 int elog (int ,char*) ;
 int pltcl_build_tuple_result (int *,int **,int,TYPE_2__*) ;
 TYPE_2__* pltcl_current_call_state ;
 int pltcl_init_tuple_store (TYPE_2__*) ;
 int pltcl_subtrans_abort (int *,int ,int ) ;
 int pltcl_subtrans_commit (int ,int ) ;
 int tuplestore_puttuple (int *,int ) ;
 int tuplestore_putvalues (int *,TYPE_3__*,int *,int*) ;
 int utf_u2e (char*) ;

__attribute__((used)) static int
pltcl_returnnext(ClientData cdata, Tcl_Interp *interp,
     int objc, Tcl_Obj *const objv[])
{
 pltcl_call_state *call_state = pltcl_current_call_state;
 FunctionCallInfo fcinfo = call_state->fcinfo;
 pltcl_proc_desc *prodesc = call_state->prodesc;
 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;
 volatile int result = TCL_OK;




 if (fcinfo == ((void*)0))
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("return_next cannot be used in triggers", -1));
  return TCL_ERROR;
 }

 if (!prodesc->fn_retisset)
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("return_next cannot be used in non-set-returning functions", -1));
  return TCL_ERROR;
 }




 if (objc != 2)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "result");
  return TCL_ERROR;
 }
 BeginInternalSubTransaction(((void*)0));
 PG_TRY();
 {

  if (call_state->tuple_store == ((void*)0))
   pltcl_init_tuple_store(call_state);

  if (prodesc->fn_retistuple)
  {
   Tcl_Obj **rowObjv;
   int rowObjc;


   if (Tcl_ListObjGetElements(interp, objv[1], &rowObjc, &rowObjv) == TCL_ERROR)
    result = TCL_ERROR;
   else
   {
    HeapTuple tuple;

    tuple = pltcl_build_tuple_result(interp, rowObjv, rowObjc,
             call_state);
    tuplestore_puttuple(call_state->tuple_store, tuple);
   }
  }
  else
  {
   Datum retval;
   bool isNull = 0;


   if (call_state->ret_tupdesc->natts != 1)
    elog(ERROR, "wrong result type supplied in return_next");

   retval = InputFunctionCall(&prodesc->result_in_func,
            utf_u2e((char *) Tcl_GetString(objv[1])),
            prodesc->result_typioparam,
            -1);
   tuplestore_putvalues(call_state->tuple_store, call_state->ret_tupdesc,
         &retval, &isNull);
  }

  pltcl_subtrans_commit(oldcontext, oldowner);
 }
 PG_CATCH();
 {
  pltcl_subtrans_abort(interp, oldcontext, oldowner);
  return TCL_ERROR;
 }
 PG_END_TRY();

 return result;
}
