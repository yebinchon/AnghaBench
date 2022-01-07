
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double LONG_DOUBLE ;


 int calculated_number_isnumber (double) ;
 scalar_t__ unlikely (int) ;

LONG_DOUBLE moving_average(const LONG_DOUBLE *series, size_t entries, size_t period) {
    if(unlikely(period <= 0))
        return 0.0;

    size_t i, count;
    LONG_DOUBLE sum = 0, avg = 0;
    LONG_DOUBLE p[period];

    for(count = 0; count < period ; count++)
        p[count] = 0.0;

    for(i = 0, count = 0; i < entries; i++) {
        LONG_DOUBLE value = series[i];
        if(unlikely(!calculated_number_isnumber(value))) continue;

        if(unlikely(count < period)) {
            sum += value;
            avg = (count == period - 1) ? sum / (LONG_DOUBLE)period : 0;
        }
        else {
            sum = sum - p[count % period] + value;
            avg = sum / (LONG_DOUBLE)period;
        }

        p[count % period] = value;
        count++;
    }

    return avg;
}
