
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {unsigned int count; struct Range* list; int is_sorted; int member_0; } ;
struct Range {scalar_t__ end; scalar_t__ begin; } ;
typedef int range ;


 struct Range INVALID_RANGE ;
 int assert (int ) ;
 int free (struct Range*) ;
 int memcpy (struct Range*,struct Range*,int) ;
 int range_apply_exclude (struct Range,struct Range*,struct Range*) ;
 scalar_t__ range_is_valid (struct Range) ;
 int rangelist_add_range (struct RangeList*,scalar_t__,scalar_t__) ;
 int rangelist_sort (struct RangeList*) ;

void
rangelist_exclude( struct RangeList *targets,
                  const struct RangeList *excludes)
{
    unsigned i;
    unsigned x;
    struct RangeList newlist = {0};


    rangelist_sort(targets);
    assert(excludes->is_sorted);




    x = 0;
    for (i=0; i<targets->count; i++) {
        struct Range range = targets->list[i];



        while (x < excludes->count && excludes->list[x].end < range.begin)
            x++;


        while (x < excludes->count && excludes->list[x].begin <= range.end) {
            struct Range split = INVALID_RANGE;

            range_apply_exclude(excludes->list[x], &range, &split);



            if (range_is_valid(split)) {
                rangelist_add_range(&newlist, range.begin, range.end);
                memcpy(&range, &split, sizeof(range));
            }

            if (excludes->list[x].begin > range.end)
                break;

            x++;
        }


        if (range_is_valid(range)) {
            rangelist_add_range(&newlist, range.begin, range.end);
        }
    }


    free(targets->list);
    targets->list = newlist.list;
    targets->count = newlist.count;
    newlist.list = ((void*)0);
    newlist.count = 0;



    rangelist_sort(targets);
}
