
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ftserver; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_table ;


 int ERROR ;
 int FOREIGNTABLEREL ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

Oid
GetForeignServerIdByRelId(Oid relid)
{
 HeapTuple tp;
 Form_pg_foreign_table tableform;
 Oid serverid;

 tp = SearchSysCache1(FOREIGNTABLEREL, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign table %u", relid);
 tableform = (Form_pg_foreign_table) GETSTRUCT(tp);
 serverid = tableform->ftserver;
 ReleaseSysCache(tp);

 return serverid;
}
