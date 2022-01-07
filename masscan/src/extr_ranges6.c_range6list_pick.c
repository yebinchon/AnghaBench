
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const uint64_t ;
struct Range6List {size_t count; scalar_t__* picker; TYPE_1__* list; } ;
typedef int ipv6address ;
struct TYPE_2__ {int begin; } ;


 int ADD1 (int ,scalar_t__ const) ;
 int range6list_pick_linearsearch (struct Range6List const*,scalar_t__ const) ;

ipv6address
range6list_pick(const struct Range6List *targets, uint64_t index)
{
    size_t maxmax = targets->count;
    size_t min = 0;
    size_t max = targets->count;
    size_t mid;
    const uint64_t *picker = targets->picker;

    if (picker == ((void*)0)) {

        return range6list_pick_linearsearch(targets, index);
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

    return ADD1(targets->list[mid].begin, (index - picker[mid]));
}
