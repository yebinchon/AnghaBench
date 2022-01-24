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
typedef  unsigned int const uint64_t ;
struct RangeList {unsigned int count; unsigned int* picker; TYPE_1__* list; int /*<<< orphan*/  is_sorted; } ;
struct TYPE_2__ {unsigned int const begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct RangeList const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct RangeList*) ; 

unsigned
FUNC3(const struct RangeList *targets, uint64_t index)
{
    unsigned maxmax = targets->count;
    unsigned min = 0;
    unsigned max = targets->count;
    unsigned mid;
    const unsigned *picker = targets->picker;

    if (!targets->is_sorted)
        FUNC2((struct RangeList *)targets);
    FUNC0(targets->is_sorted);

    if (picker == NULL) {
        /* optimization wasn't done */
        return FUNC1(targets, index);
    }


    for (;;) {
        mid = min + (max-min)/2;
        if (index < picker[mid]) {
            max = mid;
            continue;
        } if (index >= picker[mid]) {
            if (mid + 1 == maxmax)
                break;
            else if (index < picker[mid+1])
                break;
            else
                min = mid+1;
        }
    }

    return (unsigned)(targets->list[mid].begin + (index - picker[mid]));
}