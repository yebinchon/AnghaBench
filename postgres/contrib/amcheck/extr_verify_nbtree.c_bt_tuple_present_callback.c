
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int heaptuplespresent; int readonly; int rel; int heaprel; int filter; int heapallindexed; } ;
struct TYPE_9__ {int t_tid; } ;
typedef int Relation ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexTuple ;
typedef int Datum ;
typedef TYPE_2__ BtreeCheckState ;


 int Assert (int ) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int IndexTupleSize (TYPE_1__*) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ bloom_lacks_element (int ,unsigned char*,int ) ;
 TYPE_1__* bt_normalize_tuple (TYPE_2__*,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ,int ,int ) ;
 TYPE_1__* index_form_tuple (int ,int *,int*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
bt_tuple_present_callback(Relation index, ItemPointer tid, Datum *values,
        bool *isnull, bool tupleIsAlive, void *checkstate)
{
 BtreeCheckState *state = (BtreeCheckState *) checkstate;
 IndexTuple itup,
    norm;

 Assert(state->heapallindexed);


 itup = index_form_tuple(RelationGetDescr(index), values, isnull);
 itup->t_tid = *tid;
 norm = bt_normalize_tuple(state, itup);


 if (bloom_lacks_element(state->filter, (unsigned char *) norm,
       IndexTupleSize(norm)))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("heap tuple (%u,%u) from table \"%s\" lacks matching index tuple within index \"%s\"",
      ItemPointerGetBlockNumber(&(itup->t_tid)),
      ItemPointerGetOffsetNumber(&(itup->t_tid)),
      RelationGetRelationName(state->heaprel),
      RelationGetRelationName(state->rel)),
     !state->readonly
     ? errhint("Retrying verification using the function bt_index_parent_check() might provide a more specific error.")
     : 0));

 state->heaptuplespresent++;
 pfree(itup);

 if (norm != itup)
  pfree(norm);
}
