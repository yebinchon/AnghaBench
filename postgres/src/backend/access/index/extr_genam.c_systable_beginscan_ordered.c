
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* rd_index; } ;
struct TYPE_20__ {int sk_attno; } ;
struct TYPE_19__ {int * scan; int iscan; int * snapshot; int slot; TYPE_5__* irel; TYPE_5__* heap_rel; } ;
struct TYPE_17__ {int* values; } ;
struct TYPE_18__ {TYPE_1__ indkey; } ;
typedef int SysScanDescData ;
typedef TYPE_3__* SysScanDesc ;
typedef int * Snapshot ;
typedef TYPE_4__* ScanKey ;
typedef TYPE_5__* Relation ;
typedef int Oid ;


 int ERROR ;
 int GetCatalogSnapshot (int ) ;
 scalar_t__ IgnoreSystemIndexes ;
 int IndexRelationGetNumberOfAttributes (TYPE_5__*) ;
 int * RegisterSnapshot (int ) ;
 scalar_t__ ReindexIsProcessingIndex (int ) ;
 int RelationGetRelationName (TYPE_5__*) ;
 int RelationGetRelid (TYPE_5__*) ;
 int WARNING ;
 int elog (int ,char*,...) ;
 int index_beginscan (TYPE_5__*,TYPE_5__*,int *,int,int ) ;
 int index_rescan (int ,TYPE_4__*,int,int *,int ) ;
 scalar_t__ palloc (int) ;
 int table_slot_create (TYPE_5__*,int *) ;

SysScanDesc
systable_beginscan_ordered(Relation heapRelation,
         Relation indexRelation,
         Snapshot snapshot,
         int nkeys, ScanKey key)
{
 SysScanDesc sysscan;
 int i;


 if (ReindexIsProcessingIndex(RelationGetRelid(indexRelation)))
  elog(ERROR, "cannot do ordered scan on index \"%s\", because it is being reindexed",
    RelationGetRelationName(indexRelation));

 if (IgnoreSystemIndexes)
  elog(WARNING, "using index \"%s\" despite IgnoreSystemIndexes",
    RelationGetRelationName(indexRelation));

 sysscan = (SysScanDesc) palloc(sizeof(SysScanDescData));

 sysscan->heap_rel = heapRelation;
 sysscan->irel = indexRelation;
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


 for (i = 0; i < nkeys; i++)
 {
  int j;

  for (j = 0; j < IndexRelationGetNumberOfAttributes(indexRelation); j++)
  {
   if (key[i].sk_attno == indexRelation->rd_index->indkey.values[j])
   {
    key[i].sk_attno = j + 1;
    break;
   }
  }
  if (j == IndexRelationGetNumberOfAttributes(indexRelation))
   elog(ERROR, "column is not in index");
 }

 sysscan->iscan = index_beginscan(heapRelation, indexRelation,
          snapshot, nkeys, 0);
 index_rescan(sysscan->iscan, key, nkeys, ((void*)0), 0);
 sysscan->scan = ((void*)0);

 return sysscan;
}
