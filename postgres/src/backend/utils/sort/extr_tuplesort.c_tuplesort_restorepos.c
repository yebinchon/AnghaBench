
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int markpos_eof; int eof_reached; int markpos_offset; int markpos_block; int result_tape; int tapeset; int current; int randomAccess; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int MemoryContext ;


 int Assert (int ) ;
 int ERROR ;
 int LogicalTapeSeek (int ,int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;


 int elog (int ,char*) ;

void
tuplesort_restorepos(Tuplesortstate *state)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);

 Assert(state->randomAccess);

 switch (state->status)
 {
  case 129:
   state->current = state->markpos_offset;
   state->eof_reached = state->markpos_eof;
   break;
  case 128:
   LogicalTapeSeek(state->tapeset,
       state->result_tape,
       state->markpos_block,
       state->markpos_offset);
   state->eof_reached = state->markpos_eof;
   break;
  default:
   elog(ERROR, "invalid tuplesort state");
   break;
 }

 MemoryContextSwitchTo(oldcontext);
}
