
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prolang; scalar_t__ prosecdef; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;
typedef int Datum ;


 int Anum_pg_proc_probin ;
 int Anum_pg_proc_proconfig ;
 int Anum_pg_proc_prosrc ;

 int ERROR ;
 scalar_t__ FmgrHookIsNeeded (int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;

 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;

 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int elog (int ,char*,...) ;
 int heap_attisnull (int ,int ,int *) ;
 char* pstrdup (char*) ;

void
fmgr_symbol(Oid functionId, char **mod, char **fn)
{
 HeapTuple procedureTuple;
 Form_pg_proc procedureStruct;
 bool isnull;
 Datum prosrcattr;
 Datum probinattr;


 procedureTuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(functionId));
 if (!HeapTupleIsValid(procedureTuple))
  elog(ERROR, "cache lookup failed for function %u", functionId);
 procedureStruct = (Form_pg_proc) GETSTRUCT(procedureTuple);



 if (procedureStruct->prosecdef ||
  !heap_attisnull(procedureTuple, Anum_pg_proc_proconfig, ((void*)0)) ||
  FmgrHookIsNeeded(functionId))
 {
  *mod = ((void*)0);
  *fn = pstrdup("fmgr_security_definer");
  ReleaseSysCache(procedureTuple);
  return;
 }


 switch (procedureStruct->prolang)
 {
  case 129:
   prosrcattr = SysCacheGetAttr(PROCOID, procedureTuple,
           Anum_pg_proc_prosrc, &isnull);
   if (isnull)
    elog(ERROR, "null prosrc");

   *mod = ((void*)0);
   *fn = TextDatumGetCString(prosrcattr);
   break;

  case 130:
   prosrcattr = SysCacheGetAttr(PROCOID, procedureTuple,
           Anum_pg_proc_prosrc, &isnull);
   if (isnull)
    elog(ERROR, "null prosrc for C function %u", functionId);

   probinattr = SysCacheGetAttr(PROCOID, procedureTuple,
           Anum_pg_proc_probin, &isnull);
   if (isnull)
    elog(ERROR, "null probin for C function %u", functionId);





   *mod = TextDatumGetCString(probinattr);
   *fn = TextDatumGetCString(prosrcattr);
   break;

  case 128:
   *mod = ((void*)0);
   *fn = pstrdup("fmgr_sql");
   break;

  default:
   *mod = ((void*)0);
   *fn = ((void*)0);
   break;
 }

 ReleaseSysCache(procedureTuple);
}
