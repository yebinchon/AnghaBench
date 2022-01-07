
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RangeList {unsigned int count; TYPE_1__* list; } ;
struct TYPE_2__ {int end; int begin; } ;


 int rangelist_add_range (struct RangeList*,int ,int ) ;
 int rangelist_sort (struct RangeList*) ;

void
rangelist_merge(struct RangeList *list1, const struct RangeList *list2)
{
    unsigned i;

    for (i=0; i<list2->count; i++) {
        rangelist_add_range(list1, list2->list[i].begin, list2->list[i].end);
    }
    rangelist_sort(list1);
}
