#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ calculated_number ;
struct TYPE_5__ {scalar_t__ min; scalar_t__ max; } ;
typedef  int RRDR_OPTIONS ;
typedef  TYPE_1__ RRDR ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int RRDR_OPTION_NULL2ZERO ; 
 int RRDR_OPTION_REVERSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,long,int,int*) ; 
 int FUNC4 (TYPE_1__*) ; 

void FUNC5(RRDR *r, BUFFER *wb, RRDR_OPTIONS options, const char *prefix, const char *separator, const char *suffix) {
    //info("RRD2SSV(): %s: BEGIN", r->st->id);
    long i;

    FUNC1(wb, prefix);
    long start = 0, end = FUNC4(r), step = 1;
    if(!(options & RRDR_OPTION_REVERSED)) {
        start = FUNC4(r) - 1;
        end = -1;
        step = -1;
    }

    // for each line in the array
    for(i = start; i != end ;i += step) {
        int all_values_are_null = 0;
        calculated_number v = FUNC3(r, i, options, &all_values_are_null);

        if(FUNC2(i != start)) {
            if(r->min > v) r->min = v;
            if(r->max < v) r->max = v;
        }
        else {
            r->min = v;
            r->max = v;
        }

        if(FUNC2(i != start))
            FUNC1(wb, separator);

        if(all_values_are_null) {
            if(options & RRDR_OPTION_NULL2ZERO)
                FUNC1(wb, "0");
            else
                FUNC1(wb, "null");
        }
        else
            FUNC0(wb, v);
    }
    FUNC1(wb, suffix);
    //info("RRD2SSV(): %s: END", r->st->id);
}