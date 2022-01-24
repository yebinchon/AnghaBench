#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RangeList {unsigned int count; struct Range* list; int /*<<< orphan*/  is_sorted; int /*<<< orphan*/  member_0; } ;
struct Range {scalar_t__ end; scalar_t__ begin; } ;
typedef  int /*<<< orphan*/  range ;

/* Variables and functions */
 struct Range INVALID_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Range*) ; 
 int /*<<< orphan*/  FUNC2 (struct Range*,struct Range*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Range,struct Range*,struct Range*) ; 
 scalar_t__ FUNC4 (struct Range) ; 
 int /*<<< orphan*/  FUNC5 (struct RangeList*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct RangeList*) ; 

void
FUNC7(  struct RangeList *targets,
                  const struct RangeList *excludes)
{
    unsigned i;
    unsigned x;
    struct RangeList newlist = {0};
    
    /* Both lists must be sorted */
    FUNC6(targets);
    FUNC0(excludes->is_sorted);
    
    /* Go through all target ranges, apply excludes to them
     * (which may split into two ranges), and add them to the
     * the new target list */
    x = 0;
    for (i=0; i<targets->count; i++) {
        struct Range range = targets->list[i];
        
        /* Move the exclude forward until we find a potentially
         * overlapping candidate */
        while (x < excludes->count && excludes->list[x].end < range.begin)
            x++;
        
        /* Keep applying excludes to this range as long as there are overlaps */
        while (x < excludes->count && excludes->list[x].begin <= range.end) {
            struct Range split = INVALID_RANGE;
            
            FUNC3(excludes->list[x], &range, &split);
            
            /* If there is a split, then add the original range to our list
             * and then set that range to the splitted portion */
            if (FUNC4(split)) {
                FUNC5(&newlist, range.begin, range.end);
                FUNC2(&range, &split, sizeof(range));
            }
            
            if (excludes->list[x].begin > range.end)
                break;
            
            x++;
        }
        
        /* If the range hasn't been completely excluded, then add the remnants */
        if (FUNC4(range)) {
            FUNC5(&newlist, range.begin, range.end);
        }
    }

    /* Now free the old list and move over the new list */
    FUNC1(targets->list);
    targets->list = newlist.list;
    targets->count = newlist.count;
    newlist.list = NULL;
    newlist.count = 0;
    
    /* Since chopping up large ranges can split ranges, this can
     * grow the list so we need to re-sort it */
    FUNC6(targets);
}