#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct RangeList {unsigned int count; TYPE_1__* list; } ;
struct Range {unsigned int begin; unsigned int end; } ;
struct TYPE_2__ {unsigned int begin; unsigned int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,struct Range) ; 
 int /*<<< orphan*/  FUNC1 (struct RangeList*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct RangeList*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct RangeList *targets, unsigned begin, unsigned end)
{
    unsigned i;
    struct Range x;

    x.begin = begin;
    x.end = end;

    /* See if the range overlaps any exist range already in the
     * list */
    for (i = 0; i < targets->count; i++) {
        if (!FUNC0(targets->list[i], x))
            continue;

        /* If the removal-range wholly covers the range, delete
         * it completely */
        if (begin <= targets->list[i].begin && end >= targets->list[i].end) {
            FUNC2(targets, i);
            i--;
            continue;
        }

        /* If the removal-range bisects the target-rage, truncate
         * the lower end and add a new high-end */
        if (begin > targets->list[i].begin && end < targets->list[i].end) {
            struct Range newrange;

            newrange.begin = end+1;
            newrange.end = targets->list[i].end;


            targets->list[i].end = begin-1;

            FUNC1(targets, newrange.begin, newrange.end);
            i--;
            continue;
        }

        /* If overlap on the lower side */
        if (end >= targets->list[i].begin && end < targets->list[i].end) {
            targets->list[i].begin = end+1;
        }

        /* If overlap on the upper side */
        if (begin > targets->list[i].begin && begin <= targets->list[i].end) {
             targets->list[i].end = begin-1;
        }

        //assert(!"impossible");
    }
}