
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int memcpy (int*,int*,int const) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __HoltWinters(
        const LONG_DOUBLE *series,
        int entries,

        LONG_DOUBLE alpha,
        LONG_DOUBLE beta,
        LONG_DOUBLE gamma,

        const int *seasonal,
        const int *period,
        const LONG_DOUBLE *a,
        const LONG_DOUBLE *b,
        LONG_DOUBLE *s,


        LONG_DOUBLE *SSE,
        LONG_DOUBLE *level,
        LONG_DOUBLE *trend,
        LONG_DOUBLE *season
)
{
    if(unlikely(entries < 4))
        return 0;

    int start_time = 2;

    LONG_DOUBLE res = 0, xhat = 0, stmp = 0;
    int i, i0, s0;


    level[0] = *a;
    if(beta > 0) trend[0] = *b;
    if(gamma > 0) memcpy(season, s, *period * sizeof(LONG_DOUBLE));

    for(i = start_time - 1; i < entries; i++) {

        i0 = i - start_time + 2;
        s0 = i0 + *period - 1;


        xhat = level[i0 - 1] + (beta > 0 ? trend[i0 - 1] : 0);
        stmp = gamma > 0 ? season[s0 - *period] : (*seasonal != 1);
        if (*seasonal == 1)
            xhat += stmp;
        else
            xhat *= stmp;


        res = series[i] - xhat;
        *SSE += res * res;


        if (*seasonal == 1)
            level[i0] = alpha * (series[i] - stmp)
                        + (1 - alpha) * (level[i0 - 1] + trend[i0 - 1]);
        else
            level[i0] = alpha * (series[i] / stmp)
                        + (1 - alpha) * (level[i0 - 1] + trend[i0 - 1]);


        if (beta > 0)
            trend[i0] = beta * (level[i0] - level[i0 - 1])
                        + (1 - beta) * trend[i0 - 1];


        if (gamma > 0) {
            if (*seasonal == 1)
                season[s0] = gamma * (series[i] - level[i0])
                             + (1 - gamma) * stmp;
            else
                season[s0] = gamma * (series[i] / level[i0])
                             + (1 - gamma) * stmp;
        }
    }

    return 1;
}
