
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {TYPE_2__* rd_index; } ;
struct TYPE_21__ {int sk_attno; } ;
struct TYPE_20__ {int * iscan; int * scan; int * snapshot; int slot; TYPE_5__* irel; TYPE_5__* heap_rel; } ;
struct TYPE_18__ {int* values; } ;
struct TYPE_19__ {TYPE_1__ indkey; } ;
typedef int SysScanDescData ;
typedef TYPE_3__* SysScanDesc ;
typedef int * Snapshot ;
typedef TYPE_4__* ScanKey ;
typedef TYPE_5__* Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int ERROR ;
 int GetCatalogSnapshot (int ) ;
 int IgnoreSystemIndexes ;
 int IndexRelationGetNumberOfAttributes (TYPE_5__*) ;
 int * RegisterSnapshot (int ) ;
 int ReindexIsProcessingIndex (int ) ;
 int RelationGetRelid (TYPE_5__*) ;
 int elog (int ,char*) ;
 int * index_beginscan (TYPE_5__*,TYPE_5__*,int *,int,int ) ;
 TYPE_5__* index_open (int ,int ) ;
 int index_rescan (int *,TYPE_4__*,int,int *,int ) ;
 scalar_t__ palloc (int) ;
 int * table_beginscan_strat (TYPE_5__*,int *,int,TYPE_4__*,int,int) ;
 int table_slot_create (TYPE_5__*,int *) ;

SysScanDesc
systable_beginscan(Relation heapRelation,
       Oid indexId,
       bool indexOK,
       Snapshot snapshot,
       int nkeys, ScanKey key)
{
 SysScanDesc sysscan;
 Relation irel;

 if (indexOK &&
  !IgnoreSystemIndexes &&
  !ReindexIsProcessingIndex(indexId))
  irel = index_open(indexId, AccessShareLock);
 else
  irel = ((void*)0);

 sysscan = (SysScanDesc) palloc(sizeof(SysScanDescData));

 sysscan->heap_rel = heapRelation;
 sysscan->irel = irel;
 sysscan->slot = table_slot_create(heapRelation, ((void*)0));

 if (snapshot == ((void*)0))
 {
  Oid relid = RelationGetRelid(heapRelation);

  snapshot = RegisterSnapshot(GetCatalogSnapshot(relid));
  sysscan->snapshot = snapshot;
 }
 else
 {

  sysscan->snapshot = ((void*)0);
 }

 if (irel)
 {
  int i;


  for (i = 0; i < nkeys; i++)
  {
   int j;

   for (j = 0; j < IndexRelationGetNumberOfAttributes(irel); j++)
   {
    if (key[i].sk_attno == irel->rd_index->indkey.values[j])
    {
     key[i].sk_attno = j + 1;
     break;
    }
   }
   if (j == IndexRelationGetNumberOfAttributes(irel))
    elog(ERROR, "column is not in index");
  }

  sysscan->iscan = index_beginscan(heapRelation, irel,
           snapshot, nkeys, 0);
  index_rescan(sysscan->iscan, key, nkeys, ((void*)0), 0);
  sysscan->scan = ((void*)0);
 }
 else
 {







  sysscan->scan = table_beginscan_strat(heapRelation, snapshot,
             nkeys, key,
             1, 0);
  sysscan->iscan = ((void*)0);
 }

 return sysscan;
}
