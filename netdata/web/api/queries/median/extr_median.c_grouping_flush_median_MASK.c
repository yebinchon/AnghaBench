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
struct grouping_median {int next_pos; scalar_t__* series; } ;
typedef  double calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef  int /*<<< orphan*/  RRDR_VALUE_FLAGS ;
typedef  TYPE_2__ RRDR ;

/* Variables and functions */
 int /*<<< orphan*/  RRDR_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 scalar_t__ FUNC3 (int) ; 

calculated_number FUNC4(RRDR *r, RRDR_VALUE_FLAGS *rrdr_value_options_ptr) {
    struct grouping_median *g = (struct grouping_median *)r->internal.grouping_data;

    calculated_number value;

    if(FUNC3(!g->next_pos)) {
        value = 0.0;
        *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
    }
    else {
        if(g->next_pos > 1) {
            FUNC2(g->series, g->next_pos);
            value = (calculated_number)FUNC1(g->series, g->next_pos);
        }
        else
            value = (calculated_number)g->series[0];

        if(!FUNC0(value)) {
            value = 0.0;
            *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
        }

        //log_series_to_stderr(g->series, g->next_pos, value, "median");
    }

    g->next_pos = 0;

    return value;
}