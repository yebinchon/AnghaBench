
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_incremental_sum {int count; double last; double first; } ;
typedef double calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef int RRDR_VALUE_FLAGS ;
typedef TYPE_2__ RRDR ;


 int RRDR_VALUE_EMPTY ;
 scalar_t__ unlikely (int) ;

calculated_number grouping_flush_incremental_sum(RRDR *r, RRDR_VALUE_FLAGS *rrdr_value_options_ptr) {
    struct grouping_incremental_sum *g = (struct grouping_incremental_sum *)r->internal.grouping_data;

    calculated_number value;

    if(unlikely(!g->count)) {
        value = 0.0;
        *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
    }
    else if(unlikely(g->count == 1)) {
        value = 0.0;
    }
    else {
        value = g->last - g->first;
    }

    g->first = 0.0;
    g->last = 0.0;
    g->count = 0;

    return value;
}
