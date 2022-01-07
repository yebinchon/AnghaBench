
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nargs; int plan; int * argtypioparams; int * arginfuncs; } ;
typedef TYPE_3__ pltcl_query_desc ;
typedef enum options { ____Placeholder_options } options ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
typedef int Tcl_HashTable ;
typedef int Tcl_HashEntry ;
struct TYPE_8__ {TYPE_2__* prodesc; } ;
struct TYPE_6__ {int fn_readonly; TYPE_1__* interp_desc; } ;
struct TYPE_5__ {int query_hash; } ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef int Datum ;
typedef int ClientData ;


 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int InputFunctionCall (int *,int *,int ,int) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int SPI_execute_plan (int ,int *,char const*,int ,int) ;
 int SPI_processed ;
 int SPI_tuptable ;
 int TCL_ERROR ;
 int TCL_EXACT ;
 scalar_t__ TCL_OK ;
 int Tcl_AppendResult (int *,char*,char*,char*,int *) ;
 int * Tcl_FindHashEntry (int *,char*) ;
 scalar_t__ Tcl_GetHashValue (int *) ;
 scalar_t__ Tcl_GetIndexFromObj (int *,int * const,char const**,int *,int ,int*) ;
 scalar_t__ Tcl_GetIntFromObj (int *,int * const,int*) ;
 char* Tcl_GetString (int *) ;
 scalar_t__ Tcl_ListObjGetElements (int *,int * const,int*,int ***) ;
 int Tcl_NewStringObj (char*,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 int UTF_BEGIN ;
 int UTF_END ;
 int * UTF_U2E (char*) ;
 scalar_t__ palloc (int) ;
 TYPE_4__* pltcl_current_call_state ;
 int pltcl_process_SPI_result (int *,char const*,int *,int,int ,int ) ;
 int pltcl_subtrans_abort (int *,int ,int ) ;
 int pltcl_subtrans_begin (int ,int ) ;
 int pltcl_subtrans_commit (int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
pltcl_SPI_execute_plan(ClientData cdata, Tcl_Interp *interp,
        int objc, Tcl_Obj *const objv[])
{
 int my_rc;
 int spi_rc;
 int i;
 int j;
 int optIndex;
 Tcl_HashEntry *hashent;
 pltcl_query_desc *qdesc;
 const char *nulls = ((void*)0);
 const char *arrayname = ((void*)0);
 Tcl_Obj *loop_body = ((void*)0);
 int count = 0;
 int callObjc;
 Tcl_Obj **callObjv = ((void*)0);
 Datum *argvalues;
 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;
 Tcl_HashTable *query_hash;

 enum options
 {
  OPT_ARRAY, OPT_COUNT, OPT_NULLS
 };

 static const char *options[] = {
  "-array", "-count", "-nulls", (const char *) ((void*)0)
 };




 i = 1;
 while (i < objc)
 {
  if (Tcl_GetIndexFromObj(((void*)0), objv[i], options, ((void*)0),
        TCL_EXACT, &optIndex) != TCL_OK)
   break;

  if (++i >= objc)
  {
   Tcl_SetObjResult(interp,
        Tcl_NewStringObj("missing argument to -array, -count or -nulls", -1));
   return TCL_ERROR;
  }

  switch ((enum options) optIndex)
  {
   case OPT_ARRAY:
    arrayname = Tcl_GetString(objv[i++]);
    break;

   case OPT_COUNT:
    if (Tcl_GetIntFromObj(interp, objv[i++], &count) != TCL_OK)
     return TCL_ERROR;
    break;

   case OPT_NULLS:
    nulls = Tcl_GetString(objv[i++]);
    break;
  }
 }




 if (i >= objc)
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("missing argument to -count or -array", -1));
  return TCL_ERROR;
 }

 query_hash = &pltcl_current_call_state->prodesc->interp_desc->query_hash;

 hashent = Tcl_FindHashEntry(query_hash, Tcl_GetString(objv[i]));
 if (hashent == ((void*)0))
 {
  Tcl_AppendResult(interp, "invalid queryid '", Tcl_GetString(objv[i]), "'", ((void*)0));
  return TCL_ERROR;
 }
 qdesc = (pltcl_query_desc *) Tcl_GetHashValue(hashent);
 i++;




 if (nulls != ((void*)0))
 {
  if (strlen(nulls) != qdesc->nargs)
  {
   Tcl_SetObjResult(interp,
        Tcl_NewStringObj(
             "length of nulls string doesn't match number of arguments",
             -1));
   return TCL_ERROR;
  }
 }





 if (qdesc->nargs > 0)
 {
  if (i >= objc)
  {
   Tcl_SetObjResult(interp,
        Tcl_NewStringObj(
             "argument list length doesn't match number of arguments for query"
             ,-1));
   return TCL_ERROR;
  }




  if (Tcl_ListObjGetElements(interp, objv[i++], &callObjc, &callObjv) != TCL_OK)
   return TCL_ERROR;




  if (callObjc != qdesc->nargs)
  {
   Tcl_SetObjResult(interp,
        Tcl_NewStringObj(
             "argument list length doesn't match number of arguments for query"
             ,-1));
   return TCL_ERROR;
  }
 }
 else
  callObjc = 0;




 if (i < objc)
  loop_body = objv[i++];

 if (i != objc)
 {
  Tcl_WrongNumArgs(interp, 1, objv,
       "?-count n? ?-array name? ?-nulls string? "
       "query ?args? ?loop body?");
  return TCL_ERROR;
 }






 pltcl_subtrans_begin(oldcontext, oldowner);

 PG_TRY();
 {




  argvalues = (Datum *) palloc(callObjc * sizeof(Datum));

  for (j = 0; j < callObjc; j++)
  {
   if (nulls && nulls[j] == 'n')
   {
    argvalues[j] = InputFunctionCall(&qdesc->arginfuncs[j],
             ((void*)0),
             qdesc->argtypioparams[j],
             -1);
   }
   else
   {
    UTF_BEGIN;
    argvalues[j] = InputFunctionCall(&qdesc->arginfuncs[j],
             UTF_U2E(Tcl_GetString(callObjv[j])),
             qdesc->argtypioparams[j],
             -1);
    UTF_END;
   }
  }




  spi_rc = SPI_execute_plan(qdesc->plan, argvalues, nulls,
          pltcl_current_call_state->prodesc->fn_readonly,
          count);

  my_rc = pltcl_process_SPI_result(interp,
           arrayname,
           loop_body,
           spi_rc,
           SPI_tuptable,
           SPI_processed);

  pltcl_subtrans_commit(oldcontext, oldowner);
 }
 PG_CATCH();
 {
  pltcl_subtrans_abort(interp, oldcontext, oldowner);
  return TCL_ERROR;
 }
 PG_END_TRY();

 return my_rc;
}
