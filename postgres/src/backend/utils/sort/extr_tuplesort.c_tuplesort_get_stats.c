
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allowedMem; int availMem; int status; int boundUsed; scalar_t__ tapeset; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_6__ {int spaceUsed; int sortMethod; int spaceType; } ;
typedef TYPE_2__ TuplesortInstrumentation ;


 int BLCKSZ ;
 int LogicalTapeSetBlocks (scalar_t__) ;
 int SORT_SPACE_TYPE_DISK ;
 int SORT_SPACE_TYPE_MEMORY ;
 int SORT_TYPE_EXTERNAL_MERGE ;
 int SORT_TYPE_EXTERNAL_SORT ;
 int SORT_TYPE_QUICKSORT ;
 int SORT_TYPE_STILL_IN_PROGRESS ;
 int SORT_TYPE_TOP_N_HEAPSORT ;




void
tuplesort_get_stats(Tuplesortstate *state,
     TuplesortInstrumentation *stats)
{
 if (state->tapeset)
 {
  stats->spaceType = SORT_SPACE_TYPE_DISK;
  stats->spaceUsed = LogicalTapeSetBlocks(state->tapeset) * (BLCKSZ / 1024);
 }
 else
 {
  stats->spaceType = SORT_SPACE_TYPE_MEMORY;
  stats->spaceUsed = (state->allowedMem - state->availMem + 1023) / 1024;
 }

 switch (state->status)
 {
  case 129:
   if (state->boundUsed)
    stats->sortMethod = SORT_TYPE_TOP_N_HEAPSORT;
   else
    stats->sortMethod = SORT_TYPE_QUICKSORT;
   break;
  case 128:
   stats->sortMethod = SORT_TYPE_EXTERNAL_SORT;
   break;
  case 130:
   stats->sortMethod = SORT_TYPE_EXTERNAL_MERGE;
   break;
  default:
   stats->sortMethod = SORT_TYPE_STILL_IN_PROGRESS;
   break;
 }
}
