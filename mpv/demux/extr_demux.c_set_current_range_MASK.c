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
struct demux_internal {int num_ranges; struct demux_cached_range** ranges; struct demux_cached_range* current_range; } ;
struct demux_cached_range {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,struct demux_cached_range**,int,struct demux_cached_range*) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_cached_range**,int,int) ; 

__attribute__((used)) static void FUNC2(struct demux_internal *in,
                              struct demux_cached_range *range)
{
    in->current_range = range;

    // Move to in->ranges[in->num_ranges-1] (for LRU sorting/invariant)
    for (int n = 0; n < in->num_ranges; n++) {
        if (in->ranges[n] == range) {
            FUNC1(in->ranges, in->num_ranges, n);
            break;
        }
    }
    FUNC0(in, in->ranges, in->num_ranges, range);
}