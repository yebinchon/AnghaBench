#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grouping_min {int /*<<< orphan*/  count; int /*<<< orphan*/  min; } ;
typedef  int /*<<< orphan*/  calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef  TYPE_2__ RRDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(RRDR *r, calculated_number value) {
    if(!FUNC1(value)) {
        struct grouping_min *g = (struct grouping_min *)r->internal.grouping_data;

        if(!g->count || FUNC0(value) < FUNC0(g->min)) {
            g->min = value;
            g->count++;
        }
    }
}