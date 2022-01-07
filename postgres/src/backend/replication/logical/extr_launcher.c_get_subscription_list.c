
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_5__ {int subname; int subenabled; int subowner; int subdbid; int oid; } ;
struct TYPE_4__ {int name; int enabled; int owner; int dbid; int oid; } ;
typedef TYPE_1__ Subscription ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_subscription ;


 int AccessShareLock ;
 int CommitTransactionCommand () ;
 int CurrentMemoryContext ;
 int ForwardScanDirection ;
 int GETSTRUCT (int ) ;
 int GetTransactionSnapshot () ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int StartTransactionCommand () ;
 int SubscriptionRelationId ;
 int heap_getnext (int ,int ) ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ palloc0 (int) ;
 int pstrdup (int ) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
get_subscription_list(void)
{
 List *res = NIL;
 Relation rel;
 TableScanDesc scan;
 HeapTuple tup;
 MemoryContext resultcxt;


 resultcxt = CurrentMemoryContext;
 StartTransactionCommand();
 (void) GetTransactionSnapshot();

 rel = table_open(SubscriptionRelationId, AccessShareLock);
 scan = table_beginscan_catalog(rel, 0, ((void*)0));

 while (HeapTupleIsValid(tup = heap_getnext(scan, ForwardScanDirection)))
 {
  Form_pg_subscription subform = (Form_pg_subscription) GETSTRUCT(tup);
  Subscription *sub;
  MemoryContext oldcxt;







  oldcxt = MemoryContextSwitchTo(resultcxt);

  sub = (Subscription *) palloc0(sizeof(Subscription));
  sub->oid = subform->oid;
  sub->dbid = subform->subdbid;
  sub->owner = subform->subowner;
  sub->enabled = subform->subenabled;
  sub->name = pstrdup(NameStr(subform->subname));


  res = lappend(res, sub);
  MemoryContextSwitchTo(oldcxt);
 }

 table_endscan(scan);
 table_close(rel, AccessShareLock);

 CommitTransactionCommand();

 return res;
}
