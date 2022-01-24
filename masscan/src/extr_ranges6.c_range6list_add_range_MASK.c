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
struct Range6List {size_t count; size_t max; struct Range6* list; } ;
struct Range6 {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; } ;
typedef  int /*<<< orphan*/  ipv6address ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Range6* FUNC1 (struct Range6*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Range6*,struct Range6*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct Range6*,struct Range6) ; 
 scalar_t__ FUNC4 (struct Range6,struct Range6) ; 

void
FUNC5(struct Range6List *targets, const ipv6address begin, const ipv6address end)
{
    struct Range6 range;

    range.begin = begin;
    range.end = end;

    /* auto-expand the list if necessary */
    if (targets->count + 1 >= targets->max) {

        /* double the size of the array */
        targets->max = targets->max * 2 + 1;

        targets->list = FUNC1(targets->list, targets->max, sizeof(targets->list[0]));
    }

    {
        size_t lo, hi, mid;
        
        lo = 0;
        hi = targets->count;
        while (lo < hi) {
            mid = lo + (hi - lo)/2;
            if (FUNC0(range.end, targets->list[mid].begin)) {
                /* This IP range comes BEFORE the current range */
                hi = mid;
            } else if (FUNC0(targets->list[mid].end, range.begin)) {
                /* this IP range comes AFTER the current range */
                lo = mid + 1;
            } else
                break;
        }
        
        /* No matching range was found, so insert at this location */
        mid = lo + (hi - lo)/2;
        
        /*
         * If overlap, then combine it with the range at this point. Otherwise,
         * insert it at this point.
         */
        if (mid < targets->count && FUNC4(targets->list[mid], range)) {
            FUNC3(&targets->list[mid], range);
        } else {
            FUNC2(targets->list+mid+1, targets->list+mid, (targets->count - mid) * sizeof(targets->list[0]));
            targets->list[mid].begin = begin;
            targets->list[mid].end = end;
            targets->count++;
        }
        
        /*
         * If overlap with neighbors, then combine with neighbors
         */
        for (;;) {
            unsigned is_neighbor_overlapped = 0;
            if (mid > 0 && FUNC4(targets->list[mid-1], targets->list[mid])) {
                FUNC3(&targets->list[mid-1], targets->list[mid]);
                FUNC2(targets->list+mid, targets->list+mid+1, (targets->count - mid) * sizeof(targets->list[0]));
                mid--;
                is_neighbor_overlapped = 1;
                targets->count--;
            }
            if (mid+1 < targets->count && FUNC4(targets->list[mid], targets->list[mid+1])) {
                FUNC3(&targets->list[mid], targets->list[mid+1]);
                FUNC2(targets->list+mid, targets->list+mid+1, (targets->count - mid) * sizeof(targets->list[0]));
                is_neighbor_overlapped = 1;
                targets->count--;
            }
            if (!is_neighbor_overlapped)
                break;
        }
        return;
    }

}