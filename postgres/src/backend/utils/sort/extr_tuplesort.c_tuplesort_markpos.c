
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int eof_reached; int markpos_eof; int markpos_offset; int markpos_block; int result_tape; int tapeset; int current; int randomAccess; int sortcontext; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int MemoryContext ;


 int Assert (int ) ;
 int ERROR ;
 int LogicalTapeTell (int ,int ,int *,int *) ;
 int MemoryContextSwitchTo (int ) ;


 int elog (int ,char*) ;

void
tuplesort_markpos(Tuplesortstate *state)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);

 Assert(state->randomAccess);

 switch (state->status)
 {
  case 129:
   state->markpos_offset = state->current;
   state->markpos_eof = state->eof_reached;
   break;
  case 128:
   LogicalTapeTell(state->tapeset,
       state->result_tape,
       &state->markpos_block,
       &state->markpos_offset);
   state->markpos_eof = state->eof_reached;
   break;
  default:
   elog(ERROR, "invalid tuplesort state");
   break;
 }

 MemoryContextSwitchTo(oldcontext);
}
