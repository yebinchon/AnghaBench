#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lower; int upper; } ;
struct TYPE_8__ {int nItem; TYPE_1__ range; scalar_t__ ranges; } ;
typedef  TYPE_2__ ITERATOR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static BOOL FUNC4(ITERATOR *iter1, ITERATOR *iter2)
{
    if(!iter1->ranges || !iter2->ranges) {
        int lower, upper;

        if(iter1->ranges || iter2->ranges ||
                (iter1->range.lower<iter2->range.lower && iter1->range.upper>iter2->range.upper) ||
                (iter1->range.lower>iter2->range.lower && iter1->range.upper<iter2->range.upper)) {
            FUNC0("result is not a one range iterator\n");
            return FALSE;
        }

        if(iter1->range.lower==-1 || iter2->range.lower==-1)
            return TRUE;

        lower = iter1->range.lower;
        upper = iter1->range.upper;

        if(lower < iter2->range.lower)
            iter1->range.upper = iter2->range.lower;
        else if(upper > iter2->range.upper)
            iter1->range.lower = iter2->range.upper;
        else
            iter1->range.lower = iter1->range.upper = -1;

        if(iter2->range.lower < lower)
            iter2->range.upper = lower;
        else if(iter2->range.upper > upper)
            iter2->range.lower = upper;
        else
            iter2->range.lower = iter2->range.upper = -1;

        return TRUE;
    }

    FUNC1(iter1);
    FUNC1(iter2);

    while(1) {
        if(iter1->nItem==-1 || iter2->nItem==-1)
            break;

        if(iter1->nItem == iter2->nItem) {
            int delete = iter1->nItem;

            FUNC2(iter1);
            FUNC2(iter2);
            FUNC3(iter1->ranges, delete);
            FUNC3(iter2->ranges, delete);
            FUNC1(iter1);
            FUNC1(iter2);
        } else if(iter1->nItem > iter2->nItem)
            FUNC1(iter2);
        else
            FUNC1(iter1);
    }

    iter1->nItem = iter1->range.lower = iter1->range.upper = -1;
    iter2->nItem = iter2->range.lower = iter2->range.upper = -1;
    return TRUE;
}