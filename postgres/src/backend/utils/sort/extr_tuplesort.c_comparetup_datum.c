
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_6__* sortKeys; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_10__ {scalar_t__ abbrev_converter; } ;
struct TYPE_9__ {int isnull1; int tuple; int datum1; } ;
typedef TYPE_2__ SortTuple ;


 int ApplySortAbbrevFullComparator (int ,int ,int ,int ,TYPE_6__*) ;
 int ApplySortComparator (int ,int ,int ,int ,TYPE_6__*) ;
 int PointerGetDatum (int ) ;

__attribute__((used)) static int
comparetup_datum(const SortTuple *a, const SortTuple *b, Tuplesortstate *state)
{
 int compare;

 compare = ApplySortComparator(a->datum1, a->isnull1,
          b->datum1, b->isnull1,
          state->sortKeys);
 if (compare != 0)
  return compare;



 if (state->sortKeys->abbrev_converter)
  compare = ApplySortAbbrevFullComparator(PointerGetDatum(a->tuple), a->isnull1,
            PointerGetDatum(b->tuple), b->isnull1,
            state->sortKeys);

 return compare;
}
