
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int tts_tid; int tts_tableOid; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_9__ {int t_self; int t_data; int t_tableOid; } ;
typedef int Relation ;
typedef TYPE_2__* HeapTuple ;
typedef int CommandId ;
typedef int BulkInsertState ;


 TYPE_2__* ExecFetchSlotHeapTuple (TYPE_1__*,int,int*) ;
 int HEAP_INSERT_SPECULATIVE ;
 int HeapTupleHeaderSetSpeculativeToken (int ,int ) ;
 int ItemPointerCopy (int *,int *) ;
 int RelationGetRelid (int ) ;
 int heap_insert (int ,TYPE_2__*,int ,int,int ) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
heapam_tuple_insert_speculative(Relation relation, TupleTableSlot *slot,
        CommandId cid, int options,
        BulkInsertState bistate, uint32 specToken)
{
 bool shouldFree = 1;
 HeapTuple tuple = ExecFetchSlotHeapTuple(slot, 1, &shouldFree);


 slot->tts_tableOid = RelationGetRelid(relation);
 tuple->t_tableOid = slot->tts_tableOid;

 HeapTupleHeaderSetSpeculativeToken(tuple->t_data, specToken);
 options |= HEAP_INSERT_SPECULATIVE;


 heap_insert(relation, tuple, cid, options, bistate);
 ItemPointerCopy(&tuple->t_self, &slot->tts_tid);

 if (shouldFree)
  pfree(tuple);
}
