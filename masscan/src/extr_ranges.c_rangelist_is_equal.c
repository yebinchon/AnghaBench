
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RangeList {unsigned int count; TYPE_1__* list; } ;
struct TYPE_2__ {scalar_t__ begin; scalar_t__ end; } ;



__attribute__((used)) static bool
rangelist_is_equal(const struct RangeList *lhs, const struct RangeList *rhs)
{
    unsigned i;

    if (lhs->count != rhs->count)
        return 0;
    for (i=0; i<lhs->count; i++) {
        if (lhs->list[i].begin != rhs->list[i].begin) {
            return 0;
        }
        if (lhs->list[i].end != rhs->list[i].end) {
            return 0;
        }
    }

    return 1;
}
