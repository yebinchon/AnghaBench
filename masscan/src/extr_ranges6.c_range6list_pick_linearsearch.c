
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct Range6List {unsigned int count; TYPE_1__* list; } ;
struct TYPE_6__ {int member_1; int member_0; } ;
typedef TYPE_2__ const ipv6address ;
struct TYPE_5__ {int begin; int end; } ;


 TYPE_2__ const ADD1 (int ,scalar_t__) ;
 scalar_t__ DIFF (int ,int ) ;
 int assert (int) ;

__attribute__((used)) static ipv6address
range6list_pick_linearsearch(const struct Range6List *targets, uint64_t index)
{
    static const ipv6address emptyaddress = {0,0};
    unsigned i;

    for (i=0; i<targets->count; i++) {
        uint64_t range = DIFF(targets->list[i].end, targets->list[i].begin) + 1ULL;
        if (index < range)
            return ADD1(targets->list[i].begin, index);
        else
            index -= range;
    }

    assert(!"end of list");
    return emptyaddress;
}
