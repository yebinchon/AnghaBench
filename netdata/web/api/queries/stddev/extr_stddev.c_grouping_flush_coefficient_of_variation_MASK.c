#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct grouping_stddev {int count; } ;
typedef  double calculated_number ;
struct TYPE_5__ {scalar_t__ grouping_data; } ;
struct TYPE_6__ {TYPE_1__ internal; } ;
typedef  int /*<<< orphan*/  RRDR_VALUE_FLAGS ;
typedef  TYPE_2__ RRDR ;

/* Variables and functions */
 int /*<<< orphan*/  RRDR_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 double FUNC3 (struct grouping_stddev*) ; 
 double FUNC4 (struct grouping_stddev*) ; 
 scalar_t__ FUNC5 (int) ; 

calculated_number FUNC6(RRDR *r, RRDR_VALUE_FLAGS *rrdr_value_options_ptr) {
    struct grouping_stddev *g = (struct grouping_stddev *)r->internal.grouping_data;

    calculated_number value;

    if(FUNC2(g->count > 1)) {
        calculated_number m = FUNC3(g);
        value = 100.0 * FUNC4(g) / ((m < 0)? -m : m);

        if(FUNC5(!FUNC0(value))) {
            value = 0.0;
            *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
        }
    }
    else if(g->count == 1) {
        // one value collected
        value = 0.0;
    }
    else {
        // no values collected
        value = 0.0;
        *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
    }

    FUNC1(r);

    return  value;
}