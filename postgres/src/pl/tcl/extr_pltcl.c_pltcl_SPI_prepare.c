
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nargs; void** argtypes; void** argtypioparams; int qname; int * plan; int * arginfuncs; } ;
typedef TYPE_3__ pltcl_query_desc ;
typedef int int32 ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
typedef int Tcl_HashTable ;
typedef int Tcl_HashEntry ;
struct TYPE_9__ {TYPE_2__* prodesc; } ;
struct TYPE_7__ {TYPE_1__* interp_desc; } ;
struct TYPE_6__ {int query_hash; } ;
typedef int ResourceOwner ;
typedef void* Oid ;
typedef int * volatile MemoryContext ;
typedef int FmgrInfo ;
typedef int ClientData ;


 int ALLOCSET_SMALL_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int * CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERROR ;
 int MemoryContextDelete (int * volatile) ;
 int MemoryContextSwitchTo (int * volatile) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 scalar_t__ SPI_keepplan (int *) ;
 int * SPI_prepare (int ,int,void**) ;
 int TCL_ERROR ;
 scalar_t__ TCL_OK ;
 int * Tcl_CreateHashEntry (int *,int ,int*) ;
 int Tcl_GetString (int * const) ;
 scalar_t__ Tcl_ListObjGetElements (int *,int * const,int*,int ***) ;
 int Tcl_NewStringObj (int ,int) ;
 int Tcl_SetHashValue (int *,int ) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 int TopMemoryContext ;
 int UTF_BEGIN ;
 int UTF_END ;
 int UTF_U2E (int ) ;
 int elog (int ,char*) ;
 int fmgr_info_cxt (void*,int *,int * volatile) ;
 int getTypeInputInfo (void*,void**,void**) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int parseTypeString (int ,void**,int *,int) ;
 TYPE_5__* pltcl_current_call_state ;
 int pltcl_subtrans_abort (int *,int * volatile,int ) ;
 int pltcl_subtrans_begin (int * volatile,int ) ;
 int pltcl_subtrans_commit (int * volatile,int ) ;
 int snprintf (int ,int,char*,TYPE_3__*) ;

__attribute__((used)) static int
pltcl_SPI_prepare(ClientData cdata, Tcl_Interp *interp,
      int objc, Tcl_Obj *const objv[])
{
 volatile MemoryContext plan_cxt = ((void*)0);
 int nargs;
 Tcl_Obj **argsObj;
 pltcl_query_desc *qdesc;
 int i;
 Tcl_HashEntry *hashent;
 int hashnew;
 Tcl_HashTable *query_hash;
 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;




 if (objc != 3)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "query argtypes");
  return TCL_ERROR;
 }




 if (Tcl_ListObjGetElements(interp, objv[2], &nargs, &argsObj) != TCL_OK)
  return TCL_ERROR;
 plan_cxt = AllocSetContextCreate(TopMemoryContext,
          "PL/Tcl spi_prepare query",
          ALLOCSET_SMALL_SIZES);
 MemoryContextSwitchTo(plan_cxt);
 qdesc = (pltcl_query_desc *) palloc0(sizeof(pltcl_query_desc));
 snprintf(qdesc->qname, sizeof(qdesc->qname), "%p", qdesc);
 qdesc->nargs = nargs;
 qdesc->argtypes = (Oid *) palloc(nargs * sizeof(Oid));
 qdesc->arginfuncs = (FmgrInfo *) palloc(nargs * sizeof(FmgrInfo));
 qdesc->argtypioparams = (Oid *) palloc(nargs * sizeof(Oid));
 MemoryContextSwitchTo(oldcontext);






 pltcl_subtrans_begin(oldcontext, oldowner);

 PG_TRY();
 {





  for (i = 0; i < nargs; i++)
  {
   Oid typId,
      typInput,
      typIOParam;
   int32 typmod;

   parseTypeString(Tcl_GetString(argsObj[i]), &typId, &typmod, 0);

   getTypeInputInfo(typId, &typInput, &typIOParam);

   qdesc->argtypes[i] = typId;
   fmgr_info_cxt(typInput, &(qdesc->arginfuncs[i]), plan_cxt);
   qdesc->argtypioparams[i] = typIOParam;
  }




  UTF_BEGIN;
  qdesc->plan = SPI_prepare(UTF_U2E(Tcl_GetString(objv[1])),
          nargs, qdesc->argtypes);
  UTF_END;

  if (qdesc->plan == ((void*)0))
   elog(ERROR, "SPI_prepare() failed");





  if (SPI_keepplan(qdesc->plan))
   elog(ERROR, "SPI_keepplan() failed");

  pltcl_subtrans_commit(oldcontext, oldowner);
 }
 PG_CATCH();
 {
  pltcl_subtrans_abort(interp, oldcontext, oldowner);

  MemoryContextDelete(plan_cxt);

  return TCL_ERROR;
 }
 PG_END_TRY();





 query_hash = &pltcl_current_call_state->prodesc->interp_desc->query_hash;

 hashent = Tcl_CreateHashEntry(query_hash, qdesc->qname, &hashnew);
 Tcl_SetHashValue(hashent, (ClientData) qdesc);


 Tcl_SetObjResult(interp, Tcl_NewStringObj(qdesc->qname, -1));
 return TCL_OK;
}
