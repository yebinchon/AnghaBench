
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_4__ {int nKeys; void* max_buckets; void* low_mask; void* high_mask; void* indexRel; void* heapRel; int readtup; int writetup; int copytup; int comparetup; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortCoordinate ;
typedef void* Relation ;
typedef int MemoryContext ;


 int LOG ;
 int MemoryContextSwitchTo (int ) ;
 int comparetup_index_hash ;
 int copytup_index ;
 int elog (int ,char*,void*,void*,void*,int,char) ;
 int readtup_index ;
 scalar_t__ trace_sort ;
 TYPE_1__* tuplesort_begin_common (int,int ,int) ;
 int writetup_index ;

Tuplesortstate *
tuplesort_begin_index_hash(Relation heapRel,
         Relation indexRel,
         uint32 high_mask,
         uint32 low_mask,
         uint32 max_buckets,
         int workMem,
         SortCoordinate coordinate,
         bool randomAccess)
{
 Tuplesortstate *state = tuplesort_begin_common(workMem, coordinate,
               randomAccess);
 MemoryContext oldcontext;

 oldcontext = MemoryContextSwitchTo(state->sortcontext);
 state->nKeys = 1;

 state->comparetup = comparetup_index_hash;
 state->copytup = copytup_index;
 state->writetup = writetup_index;
 state->readtup = readtup_index;

 state->heapRel = heapRel;
 state->indexRel = indexRel;

 state->high_mask = high_mask;
 state->low_mask = low_mask;
 state->max_buckets = max_buckets;

 MemoryContextSwitchTo(oldcontext);

 return state;
}
