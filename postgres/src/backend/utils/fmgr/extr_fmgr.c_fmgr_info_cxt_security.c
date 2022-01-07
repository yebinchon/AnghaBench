
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int func; int retset; int strict; int nargs; } ;
struct TYPE_10__ {void* fn_oid; void* fn_stats; int fn_addr; int fn_retset; int fn_strict; int fn_nargs; int * fn_expr; int fn_mcxt; int * fn_extra; } ;
struct TYPE_9__ {int prolang; scalar_t__ prosecdef; int proretset; int proisstrict; int pronargs; } ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef TYPE_2__ FmgrInfo ;
typedef TYPE_3__ FmgrBuiltin ;
typedef int Datum ;


 int Anum_pg_proc_proconfig ;
 int Anum_pg_proc_prosrc ;

 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ FmgrHookIsNeeded (void*) ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;

 void* InvalidOid ;
 int ObjectIdGetDatum (void*) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;

 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 void* TRACK_FUNC_ALL ;
 void* TRACK_FUNC_OFF ;
 void* TRACK_FUNC_PL ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int fmgr_info_C_lang (void*,TYPE_2__*,int ) ;
 int fmgr_info_other_lang (void*,TYPE_2__*,int ) ;
 TYPE_3__* fmgr_isbuiltin (void*) ;
 TYPE_3__* fmgr_lookupByName (char*) ;
 int fmgr_security_definer ;
 int fmgr_sql ;
 int heap_attisnull (int ,int ,int *) ;
 int pfree (char*) ;

__attribute__((used)) static void
fmgr_info_cxt_security(Oid functionId, FmgrInfo *finfo, MemoryContext mcxt,
        bool ignore_security)
{
 const FmgrBuiltin *fbp;
 HeapTuple procedureTuple;
 Form_pg_proc procedureStruct;
 Datum prosrcdatum;
 bool isnull;
 char *prosrc;






 finfo->fn_oid = InvalidOid;
 finfo->fn_extra = ((void*)0);
 finfo->fn_mcxt = mcxt;
 finfo->fn_expr = ((void*)0);

 if ((fbp = fmgr_isbuiltin(functionId)) != ((void*)0))
 {



  finfo->fn_nargs = fbp->nargs;
  finfo->fn_strict = fbp->strict;
  finfo->fn_retset = fbp->retset;
  finfo->fn_stats = TRACK_FUNC_ALL;
  finfo->fn_addr = fbp->func;
  finfo->fn_oid = functionId;
  return;
 }


 procedureTuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionId));
 if (!HeapTupleIsValid(procedureTuple))
  elog(ERROR, "cache lookup failed for function %u", functionId);
 procedureStruct = (Form_pg_proc) GETSTRUCT(procedureTuple);

 finfo->fn_nargs = procedureStruct->pronargs;
 finfo->fn_strict = procedureStruct->proisstrict;
 finfo->fn_retset = procedureStruct->proretset;
 if (!ignore_security &&
  (procedureStruct->prosecdef ||
   !heap_attisnull(procedureTuple, Anum_pg_proc_proconfig, ((void*)0)) ||
   FmgrHookIsNeeded(functionId)))
 {
  finfo->fn_addr = fmgr_security_definer;
  finfo->fn_stats = TRACK_FUNC_ALL;
  finfo->fn_oid = functionId;
  ReleaseSysCache(procedureTuple);
  return;
 }

 switch (procedureStruct->prolang)
 {
  case 129:
   prosrcdatum = SysCacheGetAttr(PROCOID, procedureTuple,
            Anum_pg_proc_prosrc, &isnull);
   if (isnull)
    elog(ERROR, "null prosrc");
   prosrc = TextDatumGetCString(prosrcdatum);
   fbp = fmgr_lookupByName(prosrc);
   if (fbp == ((void*)0))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("internal function \"%s\" is not in internal lookup table",
        prosrc)));
   pfree(prosrc);

   finfo->fn_addr = fbp->func;

   finfo->fn_stats = TRACK_FUNC_ALL;
   break;

  case 130:
   fmgr_info_C_lang(functionId, finfo, procedureTuple);
   finfo->fn_stats = TRACK_FUNC_PL;
   break;

  case 128:
   finfo->fn_addr = fmgr_sql;
   finfo->fn_stats = TRACK_FUNC_PL;
   break;

  default:
   fmgr_info_other_lang(functionId, finfo, procedureTuple);
   finfo->fn_stats = TRACK_FUNC_OFF;
   break;
 }

 finfo->fn_oid = functionId;
 ReleaseSysCache(procedureTuple);
}
