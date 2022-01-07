
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int INT_MIN ;
 int MPMAX (int,int const) ;
 int MPMIN (int,int const) ;

int af_select_best_samplerate(int src_samplerate, const int *available)
{
    if (!available)
        return -1;

    int min_mult_rate = INT_MAX;
    int max_rate = INT_MIN;
    for (int i = 0; available[i]; i++) {
        if (available[i] == src_samplerate)
            return available[i];

        if (!(available[i] % src_samplerate))
            min_mult_rate = MPMIN(min_mult_rate, available[i]);

        max_rate = MPMAX(max_rate, available[i]);
    }

    if (min_mult_rate < INT_MAX)
        return min_mult_rate;

    if (max_rate > INT_MIN)
        return max_rate;

    return -1;
}
