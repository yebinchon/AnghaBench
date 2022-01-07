
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double LONG_DOUBLE ;


 double NAN ;
 int calculated_number_isnumber (double const) ;
 double default_single_exponential_smoothing_alpha ;
 int isnan (double) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;

LONG_DOUBLE single_exponential_smoothing_reverse(const LONG_DOUBLE *series, size_t entries, LONG_DOUBLE alpha) {
    if(unlikely(entries == 0))
        return NAN;

    if(unlikely(isnan(alpha)))
        alpha = default_single_exponential_smoothing_alpha;

    const LONG_DOUBLE *value = &series[entries -1];
    LONG_DOUBLE level = (1.0 - alpha) * (*value);

    for(value++ ; value >= series; value--) {
        if(likely(calculated_number_isnumber(*value)))
            level = alpha * (*value) + (1.0 - alpha) * level;
    }

    return level;
}
