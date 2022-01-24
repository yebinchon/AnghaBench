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
typedef  int /*<<< orphan*/  item ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int stats_sizes_buckets ; 
 scalar_t__ stats_sizes_cas_min ; 
 int /*<<< orphan*/ * stats_sizes_hist ; 

void FUNC2(item *it) {
    if (stats_sizes_hist == NULL || stats_sizes_cas_min > FUNC0(it))
        return;
    int ntotal = FUNC1(it);
    int bucket = ntotal / 32;
    if ((ntotal % 32) != 0) bucket++;
    if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
}