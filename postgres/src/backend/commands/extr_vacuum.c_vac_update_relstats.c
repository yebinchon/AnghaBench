
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef scalar_t__ float4 ;
typedef int TransactionId ;
struct TYPE_9__ {scalar_t__ relpages; scalar_t__ reltuples; scalar_t__ relallvisible; int relhasindex; int relhasrules; int relhastriggers; int relminmxid; int relfrozenxid; } ;
struct TYPE_8__ {int * trigdesc; int * rd_rules; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int MultiXactId ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;
typedef scalar_t__ BlockNumber ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ MultiXactIdIsValid (int ) ;
 scalar_t__ MultiXactIdPrecedes (int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReadNewTransactionId () ;
 int ReadNextMultiXactId () ;
 int RelationGetRelid (TYPE_1__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_inplace_update (TYPE_1__*,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

void
vac_update_relstats(Relation relation,
     BlockNumber num_pages, double num_tuples,
     BlockNumber num_all_visible_pages,
     bool hasindex, TransactionId frozenxid,
     MultiXactId minmulti,
     bool in_outer_xact)
{
 Oid relid = RelationGetRelid(relation);
 Relation rd;
 HeapTuple ctup;
 Form_pg_class pgcform;
 bool dirty;

 rd = table_open(RelationRelationId, RowExclusiveLock);


 ctup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(ctup))
  elog(ERROR, "pg_class entry for relid %u vanished during vacuuming",
    relid);
 pgcform = (Form_pg_class) GETSTRUCT(ctup);



 dirty = 0;
 if (pgcform->relpages != (int32) num_pages)
 {
  pgcform->relpages = (int32) num_pages;
  dirty = 1;
 }
 if (pgcform->reltuples != (float4) num_tuples)
 {
  pgcform->reltuples = (float4) num_tuples;
  dirty = 1;
 }
 if (pgcform->relallvisible != (int32) num_all_visible_pages)
 {
  pgcform->relallvisible = (int32) num_all_visible_pages;
  dirty = 1;
 }



 if (!in_outer_xact)
 {



  if (pgcform->relhasindex && !hasindex)
  {
   pgcform->relhasindex = 0;
   dirty = 1;
  }


  if (pgcform->relhasrules && relation->rd_rules == ((void*)0))
  {
   pgcform->relhasrules = 0;
   dirty = 1;
  }
  if (pgcform->relhastriggers && relation->trigdesc == ((void*)0))
  {
   pgcform->relhastriggers = 0;
   dirty = 1;
  }
 }
 if (TransactionIdIsNormal(frozenxid) &&
  pgcform->relfrozenxid != frozenxid &&
  (TransactionIdPrecedes(pgcform->relfrozenxid, frozenxid) ||
   TransactionIdPrecedes(ReadNewTransactionId(),
          pgcform->relfrozenxid)))
 {
  pgcform->relfrozenxid = frozenxid;
  dirty = 1;
 }


 if (MultiXactIdIsValid(minmulti) &&
  pgcform->relminmxid != minmulti &&
  (MultiXactIdPrecedes(pgcform->relminmxid, minmulti) ||
   MultiXactIdPrecedes(ReadNextMultiXactId(), pgcform->relminmxid)))
 {
  pgcform->relminmxid = minmulti;
  dirty = 1;
 }


 if (dirty)
  heap_inplace_update(rd, ctup);

 table_close(rd, RowExclusiveLock);
}
