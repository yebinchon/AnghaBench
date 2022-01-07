
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int bitgen_t ;


 scalar_t__ random_interval (int *,int) ;

__attribute__((used)) static int64_t hypergeometric_sample(bitgen_t *bitgen_state,
                                     int64_t good, int64_t bad, int64_t sample)
{
    int64_t remaining_total, remaining_good, result, computed_sample;
    int64_t total = good + bad;

    if (sample > total/2) {
        computed_sample = total - sample;
    }
    else {
        computed_sample = sample;
    }

    remaining_total = total;
    remaining_good = good;

    while ((computed_sample > 0) && (remaining_good > 0) &&
           (remaining_total > remaining_good)) {



        --remaining_total;
        if ((int64_t) random_interval(bitgen_state,
                                      remaining_total) < remaining_good) {

            --remaining_good;
        }
        --computed_sample;
    }

    if (remaining_total == remaining_good) {

        remaining_good -= computed_sample;
    }

    if (sample > total/2) {
        result = remaining_good;
    }
    else {
        result = good - remaining_good;
    }

    return result;
}
