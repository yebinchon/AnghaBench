#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* dimensions; } ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int* od; TYPE_3__* st; } ;
typedef  int /*<<< orphan*/  SIMPLE_PATTERN ;
typedef  int RRDR_OPTIONS ;
typedef  TYPE_1__ RRDR ;
typedef  TYPE_2__ RRDDIM ;

/* Variables and functions */
 int RRDR_DIMENSION_HIDDEN ; 
 int RRDR_DIMENSION_NONZERO ; 
 int RRDR_DIMENSION_SELECTED ; 
 int RRDR_OPTION_MATCH_IDS ; 
 int RRDR_OPTION_MATCH_NAMES ; 
 int RRDR_OPTION_NONZERO ; 
 int /*<<< orphan*/  SIMPLE_PATTERN_EXACT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(RRDR *r, RRDR_OPTIONS options, const char *dims) {
    FUNC1(r->st);

    if(FUNC5(!dims || !*dims || (dims[0] == '*' && dims[1] == '\0'))) return;

    int match_ids = 0, match_names = 0;

    if(FUNC5(options & RRDR_OPTION_MATCH_IDS))
        match_ids = 1;
    if(FUNC5(options & RRDR_OPTION_MATCH_NAMES))
        match_names = 1;

    if(FUNC0(!match_ids && !match_names))
        match_ids = match_names = 1;

    SIMPLE_PATTERN *pattern = FUNC2(dims, ",|\t\r\n\f\v", SIMPLE_PATTERN_EXACT);

    RRDDIM *d;
    long c, dims_selected = 0, dims_not_hidden_not_zero = 0;
    for(c = 0, d = r->st->dimensions; d ;c++, d = d->next) {
        if(    (match_ids   && FUNC4(pattern, d->id))
               || (match_names && FUNC4(pattern, d->name))
                ) {
            r->od[c] |= RRDR_DIMENSION_SELECTED;
            if(FUNC5(r->od[c] & RRDR_DIMENSION_HIDDEN)) r->od[c] &= ~RRDR_DIMENSION_HIDDEN;
            dims_selected++;

            // since the user needs this dimension
            // make it appear as NONZERO, to return it
            // even if the dimension has only zeros
            // unless option non_zero is set
            if(FUNC5(!(options & RRDR_OPTION_NONZERO)))
                r->od[c] |= RRDR_DIMENSION_NONZERO;

            // count the visible dimensions
            if(FUNC0(r->od[c] & RRDR_DIMENSION_NONZERO))
                dims_not_hidden_not_zero++;
        }
        else {
            r->od[c] |= RRDR_DIMENSION_HIDDEN;
            if(FUNC5(r->od[c] & RRDR_DIMENSION_SELECTED)) r->od[c] &= ~RRDR_DIMENSION_SELECTED;
        }
    }
    FUNC3(pattern);

    // check if all dimensions are hidden
    if(FUNC5(!dims_not_hidden_not_zero && dims_selected)) {
        // there are a few selected dimensions
        // but they are all zero
        // enable the selected ones
        // to avoid returning an empty chart
        for(c = 0, d = r->st->dimensions; d ;c++, d = d->next)
            if(FUNC5(r->od[c] & RRDR_DIMENSION_SELECTED))
                r->od[c] |= RRDR_DIMENSION_NONZERO;
    }
}