
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int options; int serverid; int relid; } ;
struct TYPE_4__ {int ftserver; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_table ;
typedef TYPE_2__ ForeignTable ;
typedef int Datum ;


 int Anum_pg_foreign_table_ftoptions ;
 int ERROR ;
 int FOREIGNTABLEREL ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ) ;
 scalar_t__ palloc (int) ;
 int untransformRelOptions (int ) ;

ForeignTable *
GetForeignTable(Oid relid)
{
 Form_pg_foreign_table tableform;
 ForeignTable *ft;
 HeapTuple tp;
 Datum datum;
 bool isnull;

 tp = SearchSysCache1(FOREIGNTABLEREL, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign table %u", relid);
 tableform = (Form_pg_foreign_table) GETSTRUCT(tp);

 ft = (ForeignTable *) palloc(sizeof(ForeignTable));
 ft->relid = relid;
 ft->serverid = tableform->ftserver;


 datum = SysCacheGetAttr(FOREIGNTABLEREL,
       tp,
       Anum_pg_foreign_table_ftoptions,
       &isnull);
 if (isnull)
  ft->options = NIL;
 else
  ft->options = untransformRelOptions(datum);

 ReleaseSysCache(tp);

 return ft;
}
