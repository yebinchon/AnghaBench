
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nKeys; TYPE_2__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_5__ {int ssup_reverse; int ssup_nulls_first; } ;
typedef TYPE_2__* SortSupport ;



__attribute__((used)) static void
reversedirection(Tuplesortstate *state)
{
 SortSupport sortKey = state->sortKeys;
 int nkey;

 for (nkey = 0; nkey < state->nKeys; nkey++, sortKey++)
 {
  sortKey->ssup_reverse = !sortKey->ssup_reverse;
  sortKey->ssup_nulls_first = !sortKey->ssup_nulls_first;
 }
}
