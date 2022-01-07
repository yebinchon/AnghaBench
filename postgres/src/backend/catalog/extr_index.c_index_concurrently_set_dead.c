
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int CacheInvalidateRelcache (int ) ;
 int INDEX_DROP_SET_DEAD ;
 int NoLock ;
 int ShareUpdateExclusiveLock ;
 int TransferPredicateLocksToHeapRelation (int ) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 int index_set_state_flags (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
index_concurrently_set_dead(Oid heapId, Oid indexId)
{
 Relation userHeapRelation;
 Relation userIndexRelation;







 userHeapRelation = table_open(heapId, ShareUpdateExclusiveLock);
 userIndexRelation = index_open(indexId, ShareUpdateExclusiveLock);
 TransferPredicateLocksToHeapRelation(userIndexRelation);






 index_set_state_flags(indexId, INDEX_DROP_SET_DEAD);






 CacheInvalidateRelcache(userHeapRelation);




 table_close(userHeapRelation, NoLock);
 index_close(userIndexRelation, NoLock);
}
