
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_11__ {int tupDesc; TYPE_1__* sortKeys; int tapeset; scalar_t__ randomAccess; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_14__ {char* t_len; scalar_t__ t_data; } ;
struct TYPE_13__ {unsigned int t_len; } ;
struct TYPE_12__ {int isnull1; int datum1; void* tuple; } ;
struct TYPE_10__ {int ssup_attno; } ;
typedef TYPE_3__ SortTuple ;
typedef TYPE_4__* MinimalTuple ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_5__ HeapTupleData ;


 int LogicalTapeReadExact (int ,int,...) ;
 unsigned int MINIMAL_TUPLE_DATA_OFFSET ;
 char* MINIMAL_TUPLE_OFFSET ;
 int heap_getattr (TYPE_5__*,int ,int ,int *) ;
 int readtup_alloc (TYPE_2__*,unsigned int) ;

__attribute__((used)) static void
readtup_heap(Tuplesortstate *state, SortTuple *stup,
    int tapenum, unsigned int len)
{
 unsigned int tupbodylen = len - sizeof(int);
 unsigned int tuplen = tupbodylen + MINIMAL_TUPLE_DATA_OFFSET;
 MinimalTuple tuple = (MinimalTuple) readtup_alloc(state, tuplen);
 char *tupbody = (char *) tuple + MINIMAL_TUPLE_DATA_OFFSET;
 HeapTupleData htup;


 tuple->t_len = tuplen;
 LogicalTapeReadExact(state->tapeset, tapenum,
       tupbody, tupbodylen);
 if (state->randomAccess)
  LogicalTapeReadExact(state->tapeset, tapenum,
        &tuplen, sizeof(tuplen));
 stup->tuple = (void *) tuple;

 htup.t_len = tuple->t_len + MINIMAL_TUPLE_OFFSET;
 htup.t_data = (HeapTupleHeader) ((char *) tuple - MINIMAL_TUPLE_OFFSET);
 stup->datum1 = heap_getattr(&htup,
        state->sortKeys[0].ssup_attno,
        state->tupDesc,
        &stup->isnull1);
}
