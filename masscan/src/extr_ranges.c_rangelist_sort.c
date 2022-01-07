
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RangeList {unsigned int count; int is_sorted; TYPE_1__* list; int member_0; } ;
struct TYPE_3__ {int end; int begin; } ;


 int LOG (int,char*,...) ;
 int free (TYPE_1__*) ;
 int qsort (TYPE_1__*,unsigned int,int,int ) ;
 int range_compare ;
 int rangelist_add_range (struct RangeList*,int ,int ) ;

void
rangelist_sort(struct RangeList *targets)
{
    size_t i;
    struct RangeList newlist = {0};
    unsigned original_count = targets->count;




    if (targets->count == 0) {
        targets->is_sorted = 1;
        return;
    }


    if (targets->is_sorted) {
        return;
    }



    LOG(3, "[+] range:sort: sorting...\n");
    qsort( targets->list,
            targets->count,
            sizeof(targets->list[0]),
            range_compare);






    LOG(3, "[+] range:sort: combining...\n");
    for (i=0; i<targets->count; i++) {
        rangelist_add_range(&newlist, targets->list[i].begin, targets->list[i].end);
    }

    LOG(3, "[+] range:sort: combined from %u elements to %u elements\n", original_count, newlist.count);
    free(targets->list);
    targets->list = newlist.list;
    targets->count = newlist.count;
    newlist.list = 0;

    LOG(2, "[+] range:sort: done...\n");

    targets->is_sorted = 1;
}
