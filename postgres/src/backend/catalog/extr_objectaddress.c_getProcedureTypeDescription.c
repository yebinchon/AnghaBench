
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prokind; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_proc ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 scalar_t__ PROKIND_AGGREGATE ;
 scalar_t__ PROKIND_PROCEDURE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfoString (int ,char*) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
getProcedureTypeDescription(StringInfo buffer, Oid procid)
{
 HeapTuple procTup;
 Form_pg_proc procForm;

 procTup = SearchSysCache1(PROCOID,
         ObjectIdGetDatum(procid));
 if (!HeapTupleIsValid(procTup))
  elog(ERROR, "cache lookup failed for procedure %u", procid);
 procForm = (Form_pg_proc) GETSTRUCT(procTup);

 if (procForm->prokind == PROKIND_AGGREGATE)
  appendStringInfoString(buffer, "aggregate");
 else if (procForm->prokind == PROKIND_PROCEDURE)
  appendStringInfoString(buffer, "procedure");
 else
  appendStringInfoString(buffer, "function");

 ReleaseSysCache(procTup);
}
