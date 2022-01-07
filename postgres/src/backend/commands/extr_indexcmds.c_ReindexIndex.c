
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ReindexIndexCallbackState {int concurrent; int locked_table_oid; } ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; char relpersistence; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int Oid ;


 int AccessExclusiveLock ;
 int InvalidOid ;
 int NoLock ;
 int REINDEXOPT_REPORT_PROGRESS ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RangeVarCallbackForReindexIndex ;
 int RangeVarGetRelidExtended (int *,int ,int ,int ,struct ReindexIndexCallbackState*) ;
 int ReindexPartitionedIndex (TYPE_2__*) ;
 int ReindexRelationConcurrently (int ,int) ;
 int ShareUpdateExclusiveLock ;
 int index_close (TYPE_2__*,int ) ;
 TYPE_2__* index_open (int ,int ) ;
 int reindex_index (int ,int,char,int) ;

void
ReindexIndex(RangeVar *indexRelation, int options, bool concurrent)
{
 struct ReindexIndexCallbackState state;
 Oid indOid;
 Relation irel;
 char persistence;






 state.concurrent = concurrent;
 state.locked_table_oid = InvalidOid;
 indOid = RangeVarGetRelidExtended(indexRelation,
           concurrent ? ShareUpdateExclusiveLock : AccessExclusiveLock,
           0,
           RangeVarCallbackForReindexIndex,
           &state);





 irel = index_open(indOid, NoLock);

 if (irel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
 {
  ReindexPartitionedIndex(irel);
  return;
 }

 persistence = irel->rd_rel->relpersistence;
 index_close(irel, NoLock);

 if (concurrent)
  ReindexRelationConcurrently(indOid, options);
 else
  reindex_index(indOid, 0, persistence,
       options | REINDEXOPT_REPORT_PROGRESS);
}
