
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rel; int targetblock; } ;
typedef int * ItemPointer ;
typedef int IndexTuple ;
typedef TYPE_1__ BtreeCheckState ;
typedef int BlockNumber ;


 int * BTreeTupleGetHeapTID (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int RelationGetRelationName (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;

__attribute__((used)) static inline ItemPointer
BTreeTupleGetHeapTIDCareful(BtreeCheckState *state, IndexTuple itup,
       bool nonpivot)
{
 ItemPointer result = BTreeTupleGetHeapTID(itup);
 BlockNumber targetblock = state->targetblock;

 if (result == ((void*)0) && nonpivot)
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("block %u or its right sibling block or child block in index \"%s\" contains non-pivot tuple that lacks a heap TID",
      targetblock, RelationGetRelationName(state->rel))));

 return result;
}
