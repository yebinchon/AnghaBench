
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int eof_reached; int markpos_eof; long markpos_block; int markpos_offset; int result_tape; int tapeset; int current; int randomAccess; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int MemoryContext ;


 int Assert (int ) ;
 int ERROR ;
 int LogicalTapeRewindForRead (int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;


 int elog (int ,char*) ;

void
tuplesort_rescan(Tuplesortstate *state)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);

 Assert(state->randomAccess);

 switch (state->status)
 {
  case 129:
   state->current = 0;
   state->eof_reached = 0;
   state->markpos_offset = 0;
   state->markpos_eof = 0;
   break;
  case 128:
   LogicalTapeRewindForRead(state->tapeset,
          state->result_tape,
          0);
   state->eof_reached = 0;
   state->markpos_block = 0L;
   state->markpos_offset = 0;
   state->markpos_eof = 0;
   break;
  default:
   elog(ERROR, "invalid tuplesort state");
   break;
 }

 MemoryContextSwitchTo(oldcontext);
}
