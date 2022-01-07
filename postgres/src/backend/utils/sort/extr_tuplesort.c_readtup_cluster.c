
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_10__ {int tupDesc; TYPE_1__* indexInfo; int tapeset; scalar_t__ randomAccess; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_12__ {unsigned int* t_data; unsigned int t_len; unsigned int t_self; int t_tableOid; } ;
struct TYPE_11__ {int isnull1; int datum1; void* tuple; } ;
struct TYPE_9__ {int * ii_IndexAttrNumbers; } ;
typedef TYPE_3__ SortTuple ;
typedef int ItemPointerData ;
typedef unsigned int* HeapTupleHeader ;
typedef TYPE_4__* HeapTuple ;


 int HEAPTUPLESIZE ;
 int InvalidOid ;
 int LogicalTapeReadExact (int ,int,unsigned int*,int) ;
 int heap_getattr (TYPE_4__*,int ,int ,int *) ;
 int readtup_alloc (TYPE_2__*,int) ;

__attribute__((used)) static void
readtup_cluster(Tuplesortstate *state, SortTuple *stup,
    int tapenum, unsigned int tuplen)
{
 unsigned int t_len = tuplen - sizeof(ItemPointerData) - sizeof(int);
 HeapTuple tuple = (HeapTuple) readtup_alloc(state,
              t_len + HEAPTUPLESIZE);


 tuple->t_data = (HeapTupleHeader) ((char *) tuple + HEAPTUPLESIZE);
 tuple->t_len = t_len;
 LogicalTapeReadExact(state->tapeset, tapenum,
       &tuple->t_self, sizeof(ItemPointerData));

 tuple->t_tableOid = InvalidOid;

 LogicalTapeReadExact(state->tapeset, tapenum,
       tuple->t_data, tuple->t_len);
 if (state->randomAccess)
  LogicalTapeReadExact(state->tapeset, tapenum,
        &tuplen, sizeof(tuplen));
 stup->tuple = (void *) tuple;

 if (state->indexInfo->ii_IndexAttrNumbers[0] != 0)
  stup->datum1 = heap_getattr(tuple,
         state->indexInfo->ii_IndexAttrNumbers[0],
         state->tupDesc,
         &stup->isnull1);
}
