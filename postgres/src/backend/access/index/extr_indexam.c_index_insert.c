
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_indam; } ;
struct TYPE_8__ {int (* aminsert ) (TYPE_2__*,int *,int*,int ,TYPE_2__*,int ,int *) ;int ampredlocks; } ;
typedef TYPE_2__* Relation ;
typedef int ItemPointer ;
typedef int IndexUniqueCheck ;
typedef int IndexInfo ;
typedef int HeapTuple ;
typedef int Datum ;


 int CHECK_REL_PROCEDURE (int ) ;
 int CheckForSerializableConflictIn (TYPE_2__*,int ,int ) ;
 int InvalidBuffer ;
 int RELATION_CHECKS ;
 int aminsert ;
 int stub1 (TYPE_2__*,int *,int*,int ,TYPE_2__*,int ,int *) ;

bool
index_insert(Relation indexRelation,
    Datum *values,
    bool *isnull,
    ItemPointer heap_t_ctid,
    Relation heapRelation,
    IndexUniqueCheck checkUnique,
    IndexInfo *indexInfo)
{
 RELATION_CHECKS;
 CHECK_REL_PROCEDURE(aminsert);

 if (!(indexRelation->rd_indam->ampredlocks))
  CheckForSerializableConflictIn(indexRelation,
            (HeapTuple) ((void*)0),
            InvalidBuffer);

 return indexRelation->rd_indam->aminsert(indexRelation, values, isnull,
            heap_t_ctid, heapRelation,
            checkUnique, indexInfo);
}
