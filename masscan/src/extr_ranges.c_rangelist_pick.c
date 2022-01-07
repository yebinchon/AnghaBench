
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int const uint64_t ;
struct RangeList {unsigned int count; unsigned int* picker; TYPE_1__* list; int is_sorted; } ;
struct TYPE_2__ {unsigned int const begin; } ;


 int assert (int ) ;
 int rangelist_pick_linearsearch (struct RangeList const*,unsigned int const) ;
 int rangelist_sort (struct RangeList*) ;

unsigned
rangelist_pick(const struct RangeList *targets, uint64_t index)
{
    unsigned maxmax = targets->count;
    unsigned min = 0;
    unsigned max = targets->count;
    unsigned mid;
    const unsigned *picker = targets->picker;

    if (!targets->is_sorted)
        rangelist_sort((struct RangeList *)targets);
    assert(targets->is_sorted);

    if (picker == ((void*)0)) {

        return rangelist_pick_linearsearch(targets, index);
    }


    for (;;) {
        mid = min + (max-min)/2;
        if (index < picker[mid]) {
            max = mid;
            continue;
        } if (index >= picker[mid]) {
            if (mid + 1 == maxmax)
                break;
            else if (index < picker[mid+1])
                break;
            else
                min = mid+1;
        }
    }

    return (unsigned)(targets->list[mid].begin + (index - picker[mid]));
}
