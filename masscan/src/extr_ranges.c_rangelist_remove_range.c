
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RangeList {unsigned int count; TYPE_1__* list; } ;
struct Range {unsigned int begin; unsigned int end; } ;
struct TYPE_2__ {unsigned int begin; unsigned int end; } ;


 int range_is_overlap (TYPE_1__,struct Range) ;
 int rangelist_add_range (struct RangeList*,unsigned int,unsigned int) ;
 int rangelist_remove_at (struct RangeList*,unsigned int) ;

__attribute__((used)) static void
rangelist_remove_range(struct RangeList *targets, unsigned begin, unsigned end)
{
    unsigned i;
    struct Range x;

    x.begin = begin;
    x.end = end;



    for (i = 0; i < targets->count; i++) {
        if (!range_is_overlap(targets->list[i], x))
            continue;



        if (begin <= targets->list[i].begin && end >= targets->list[i].end) {
            rangelist_remove_at(targets, i);
            i--;
            continue;
        }



        if (begin > targets->list[i].begin && end < targets->list[i].end) {
            struct Range newrange;

            newrange.begin = end+1;
            newrange.end = targets->list[i].end;


            targets->list[i].end = begin-1;

            rangelist_add_range(targets, newrange.begin, newrange.end);
            i--;
            continue;
        }


        if (end >= targets->list[i].begin && end < targets->list[i].end) {
            targets->list[i].begin = end+1;
        }


        if (begin > targets->list[i].begin && begin <= targets->list[i].end) {
             targets->list[i].end = begin-1;
        }


    }
}
