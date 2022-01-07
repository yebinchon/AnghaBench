
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct Range6List {unsigned int count; struct Range6* list; } ;
struct Range6 {int end; int begin; } ;


 scalar_t__ DIFF (int ,int ) ;
 int range6list_remove_range (struct Range6List*,int ,int ) ;

uint64_t
range6list_exclude( struct Range6List *targets,
                  const struct Range6List *excludes)
{
    uint64_t count = 0;
    unsigned i;

    for (i=0; i<excludes->count; i++) {
        struct Range6 range = excludes->list[i];
        count += DIFF(range.end, range.begin) + 1ULL;
        range6list_remove_range(targets, range.begin, range.end);
    }

    return count;
}
