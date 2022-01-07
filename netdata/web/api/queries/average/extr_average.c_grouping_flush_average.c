
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_average {double count; double sum; } ;
typedef double calculated_number ;
struct TYPE_4__ {int resampling_group; double resampling_divisor; scalar_t__ grouping_data; } ;
struct TYPE_5__ {int result_options; TYPE_1__ internal; } ;
typedef int RRDR_VALUE_FLAGS ;
typedef TYPE_2__ RRDR ;


 int RRDR_RESULT_OPTION_VARIABLE_STEP ;
 int RRDR_VALUE_EMPTY ;
 scalar_t__ unlikely (int) ;

calculated_number grouping_flush_average(RRDR *r, RRDR_VALUE_FLAGS *rrdr_value_options_ptr) {
    struct grouping_average *g = (struct grouping_average *)r->internal.grouping_data;

    calculated_number value;

    if(unlikely(!g->count)) {
        value = 0.0;
        *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
    }
    else {
        if(unlikely(r->internal.resampling_group != 1)) {
            if (unlikely(r->result_options & RRDR_RESULT_OPTION_VARIABLE_STEP))
                value = g->sum / g->count / r->internal.resampling_divisor;
            else
                value = g->sum / r->internal.resampling_divisor;
        } else
            value = g->sum / g->count;
    }

    g->sum = 0.0;
    g->count = 0;

    return value;
}
