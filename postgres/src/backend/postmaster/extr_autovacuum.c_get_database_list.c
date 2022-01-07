
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * adw_entry; int adw_minmulti; int adw_frozenxid; int adw_name; int adw_datid; } ;
typedef TYPE_1__ avw_dbase ;
typedef int TableScanDesc ;
struct TYPE_5__ {int datminmxid; int datfrozenxid; int datname; int oid; } ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_database ;


 int AccessShareLock ;
 int CommitTransactionCommand () ;
 int CurrentMemoryContext ;
 int DatabaseRelationId ;
 int ForwardScanDirection ;
 int GETSTRUCT (int ) ;
 int GetTransactionSnapshot () ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int StartTransactionCommand () ;
 int heap_getnext (int ,int ) ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 int pstrdup (int ) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
get_database_list(void)
{
 List *dblist = NIL;
 Relation rel;
 TableScanDesc scan;
 HeapTuple tup;
 MemoryContext resultcxt;


 resultcxt = CurrentMemoryContext;
 StartTransactionCommand();
 (void) GetTransactionSnapshot();

 rel = table_open(DatabaseRelationId, AccessShareLock);
 scan = table_beginscan_catalog(rel, 0, ((void*)0));

 while (HeapTupleIsValid(tup = heap_getnext(scan, ForwardScanDirection)))
 {
  Form_pg_database pgdatabase = (Form_pg_database) GETSTRUCT(tup);
  avw_dbase *avdb;
  MemoryContext oldcxt;







  oldcxt = MemoryContextSwitchTo(resultcxt);

  avdb = (avw_dbase *) palloc(sizeof(avw_dbase));

  avdb->adw_datid = pgdatabase->oid;
  avdb->adw_name = pstrdup(NameStr(pgdatabase->datname));
  avdb->adw_frozenxid = pgdatabase->datfrozenxid;
  avdb->adw_minmulti = pgdatabase->datminmxid;

  avdb->adw_entry = ((void*)0);

  dblist = lappend(dblist, avdb);
  MemoryContextSwitchTo(oldcxt);
 }

 table_endscan(scan);
 table_close(rel, AccessShareLock);

 CommitTransactionCommand();

 return dblist;
}
