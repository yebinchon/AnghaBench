
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ii_Concurrent; int ii_BrokenHotChain; int ii_ReadyForInserts; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ IndexInfo ;


 int ActiveSnapshotSet () ;
 int Assert (int) ;
 TYPE_1__* BuildIndexInfo (int ) ;
 int INDEX_CREATE_SET_READY ;
 int NoLock ;
 int RowExclusiveLock ;
 int ShareUpdateExclusiveLock ;
 int index_build (int ,int ,TYPE_1__*,int,int) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 int index_set_state_flags (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
index_concurrently_build(Oid heapRelationId,
       Oid indexRelationId)
{
 Relation heapRel;
 Relation indexRelation;
 IndexInfo *indexInfo;


 Assert(ActiveSnapshotSet());


 heapRel = table_open(heapRelationId, ShareUpdateExclusiveLock);


 indexRelation = index_open(indexRelationId, RowExclusiveLock);






 indexInfo = BuildIndexInfo(indexRelation);
 Assert(!indexInfo->ii_ReadyForInserts);
 indexInfo->ii_Concurrent = 1;
 indexInfo->ii_BrokenHotChain = 0;


 index_build(heapRel, indexRelation, indexInfo, 0, 1);


 table_close(heapRel, NoLock);
 index_close(indexRelation, NoLock);






 index_set_state_flags(indexRelationId, INDEX_CREATE_SET_READY);
}
