
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grouping_stddev {int count; } ;
typedef double calculated_number ;
struct TYPE_5__ {scalar_t__ grouping_data; } ;
struct TYPE_6__ {TYPE_1__ internal; } ;
typedef int RRDR_VALUE_FLAGS ;
typedef TYPE_2__ RRDR ;


 int RRDR_VALUE_EMPTY ;
 int calculated_number_isnumber (double) ;
 int grouping_reset_stddev (TYPE_2__*) ;
 scalar_t__ likely (int) ;
 double mean (struct grouping_stddev*) ;
 double stddev (struct grouping_stddev*) ;
 scalar_t__ unlikely (int) ;

calculated_number grouping_flush_coefficient_of_variation(RRDR *r, RRDR_VALUE_FLAGS *rrdr_value_options_ptr) {
    struct grouping_stddev *g = (struct grouping_stddev *)r->internal.grouping_data;

    calculated_number value;

    if(likely(g->count > 1)) {
        calculated_number m = mean(g);
        value = 100.0 * stddev(g) / ((m < 0)? -m : m);

        if(unlikely(!calculated_number_isnumber(value))) {
            value = 0.0;
            *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
        }
    }
    else if(g->count == 1) {

        value = 0.0;
    }
    else {

        value = 0.0;
        *rrdr_value_options_ptr |= RRDR_VALUE_EMPTY;
    }

    grouping_reset_stddev(r);

    return value;
}
