
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int memtupcount; int abbrevNext; TYPE_2__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_5__ {int * abbrev_full_comparator; int (* abbrev_abort ) (int,TYPE_2__*) ;int * abbrev_converter; int * comparator; } ;


 int Assert (int ) ;
 scalar_t__ TSS_INITIAL ;
 int stub1 (int,TYPE_2__*) ;

__attribute__((used)) static bool
consider_abort_common(Tuplesortstate *state)
{
 Assert(state->sortKeys[0].abbrev_converter != ((void*)0));
 Assert(state->sortKeys[0].abbrev_abort != ((void*)0));
 Assert(state->sortKeys[0].abbrev_full_comparator != ((void*)0));





 if (state->status == TSS_INITIAL &&
  state->memtupcount >= state->abbrevNext)
 {
  state->abbrevNext *= 2;





  if (!state->sortKeys->abbrev_abort(state->memtupcount,
             state->sortKeys))
   return 0;





  state->sortKeys[0].comparator = state->sortKeys[0].abbrev_full_comparator;
  state->sortKeys[0].abbrev_converter = ((void*)0);

  state->sortKeys[0].abbrev_abort = ((void*)0);
  state->sortKeys[0].abbrev_full_comparator = ((void*)0);


  return 1;
 }

 return 0;
}
