
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
typedef int TableScanDesc ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;
typedef int AttrNumber ;


 int AccessShareLock ;
 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CurrentMemoryContext ;
 int ForwardScanDirection ;
 int GetLatestSnapshot () ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int PGSTAT_TAB_HASH_SIZE ;
 int RegisterSnapshot (int ) ;
 int RelationGetDescr (int ) ;
 int UnregisterSnapshot (int ) ;
 int * hash_create (char*,int ,TYPE_1__*,int) ;
 int hash_search (int *,void*,int ,int *) ;
 int heap_getattr (int *,int ,int ,int*) ;
 int * heap_getnext (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int table_beginscan (int ,int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static HTAB *
pgstat_collect_oids(Oid catalogid, AttrNumber anum_oid)
{
 HTAB *htab;
 HASHCTL hash_ctl;
 Relation rel;
 TableScanDesc scan;
 HeapTuple tup;
 Snapshot snapshot;

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(Oid);
 hash_ctl.entrysize = sizeof(Oid);
 hash_ctl.hcxt = CurrentMemoryContext;
 htab = hash_create("Temporary table of OIDs",
        PGSTAT_TAB_HASH_SIZE,
        &hash_ctl,
        HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 rel = table_open(catalogid, AccessShareLock);
 snapshot = RegisterSnapshot(GetLatestSnapshot());
 scan = table_beginscan(rel, snapshot, 0, ((void*)0));
 while ((tup = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Oid thisoid;
  bool isnull;

  thisoid = heap_getattr(tup, anum_oid, RelationGetDescr(rel), &isnull);
  Assert(!isnull);

  CHECK_FOR_INTERRUPTS();

  (void) hash_search(htab, (void *) &thisoid, HASH_ENTER, ((void*)0));
 }
 table_endscan(scan);
 UnregisterSnapshot(snapshot);
 table_close(rel, AccessShareLock);

 return htab;
}
