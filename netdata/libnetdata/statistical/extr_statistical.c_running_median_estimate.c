
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float LONG_DOUBLE ;


 int calculated_number_isnumber (float) ;
 float copysignl (float,float) ;
 scalar_t__ unlikely (int) ;

LONG_DOUBLE running_median_estimate(const LONG_DOUBLE *series, size_t entries) {
    LONG_DOUBLE median = 0.0f;
    LONG_DOUBLE average = 0.0f;
    size_t i;

    for(i = 0; i < entries ; i++) {
        LONG_DOUBLE value = series[i];
        if(unlikely(!calculated_number_isnumber(value))) continue;

        average += ( value - average ) * 0.1f;
        median += copysignl( average * 0.01, value - median );
    }

    return median;
}
