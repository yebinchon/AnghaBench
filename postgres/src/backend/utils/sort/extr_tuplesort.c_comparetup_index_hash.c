
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int low_mask; int high_mask; int max_buckets; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_9__ {int t_tid; } ;
struct TYPE_8__ {scalar_t__ tuple; int datum1; int isnull1; } ;
typedef TYPE_2__ SortTuple ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_3__* IndexTuple ;
typedef scalar_t__ Bucket ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int DatumGetUInt32 (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ _hash_hashkey2bucket (int ,int ,int ,int ) ;

__attribute__((used)) static int
comparetup_index_hash(const SortTuple *a, const SortTuple *b,
       Tuplesortstate *state)
{
 Bucket bucket1;
 Bucket bucket2;
 IndexTuple tuple1;
 IndexTuple tuple2;





 Assert(!a->isnull1);
 bucket1 = _hash_hashkey2bucket(DatumGetUInt32(a->datum1),
           state->max_buckets, state->high_mask,
           state->low_mask);
 Assert(!b->isnull1);
 bucket2 = _hash_hashkey2bucket(DatumGetUInt32(b->datum1),
           state->max_buckets, state->high_mask,
           state->low_mask);
 if (bucket1 > bucket2)
  return 1;
 else if (bucket1 < bucket2)
  return -1;






 tuple1 = (IndexTuple) a->tuple;
 tuple2 = (IndexTuple) b->tuple;

 {
  BlockNumber blk1 = ItemPointerGetBlockNumber(&tuple1->t_tid);
  BlockNumber blk2 = ItemPointerGetBlockNumber(&tuple2->t_tid);

  if (blk1 != blk2)
   return (blk1 < blk2) ? -1 : 1;
 }
 {
  OffsetNumber pos1 = ItemPointerGetOffsetNumber(&tuple1->t_tid);
  OffsetNumber pos2 = ItemPointerGetOffsetNumber(&tuple2->t_tid);

  if (pos1 != pos2)
   return (pos1 < pos2) ? -1 : 1;
 }


 Assert(0);

 return 0;
}
