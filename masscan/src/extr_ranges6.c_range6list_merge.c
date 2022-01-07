
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Range6List {unsigned int count; TYPE_1__* list; } ;
struct TYPE_2__ {int end; int begin; } ;


 int range6list_add_range (struct Range6List*,int ,int ) ;

void
range6list_merge(struct Range6List *list1, const struct Range6List *list2)
{
    unsigned i;

    for (i=0; i<list2->count; i++) {
        range6list_add_range(list1, list2->list[i].begin, list2->list[i].end);
    }
}
