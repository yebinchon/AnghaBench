
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {unsigned int count; struct Range* list; } ;
struct Range {int end; int begin; } ;


 int rangelist_remove_range (struct RangeList*,int ,int ) ;
 int rangelist_sort (struct RangeList*) ;

__attribute__((used)) static void
rangelist_exclude2( struct RangeList *targets,
                  const struct RangeList *excludes)
{
    unsigned i;

    for (i=0; i<excludes->count; i++) {
        struct Range range = excludes->list[i];
        rangelist_remove_range(targets, range.begin, range.end);
    }



    rangelist_sort(targets);

}
