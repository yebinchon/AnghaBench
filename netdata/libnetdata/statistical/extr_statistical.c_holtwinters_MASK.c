#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  double LONG_DOUBLE ;

/* Variables and functions */
 int FUNC0 (double const*,int,double,double,double,int*,int*,double*,double*,double*,double*,double*,double*,double*) ; 
 double* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (double*) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

LONG_DOUBLE FUNC5(const LONG_DOUBLE *series, size_t entries, LONG_DOUBLE alpha, LONG_DOUBLE beta, LONG_DOUBLE gamma, LONG_DOUBLE *forecast) {
    if(FUNC4(FUNC3(alpha)))
        alpha = 0.3;

    if(FUNC4(FUNC3(beta)))
        beta = 0.05;

    if(FUNC4(FUNC3(gamma)))
        gamma = 0;

    int seasonal = 0;
    int period = 0;
    LONG_DOUBLE a0 = series[0];
    LONG_DOUBLE b0 = 0;
    LONG_DOUBLE s[] = {};

    LONG_DOUBLE errors = 0.0;
    size_t nb_computations = entries;
    LONG_DOUBLE *estimated_level  = FUNC1(nb_computations, sizeof(LONG_DOUBLE));
    LONG_DOUBLE *estimated_trend  = FUNC1(nb_computations, sizeof(LONG_DOUBLE));
    LONG_DOUBLE *estimated_season = FUNC1(nb_computations, sizeof(LONG_DOUBLE));

    int ret = FUNC0(
            series,
            (int)entries,
            alpha,
            beta,
            gamma,
            &seasonal,
            &period,
            &a0,
            &b0,
            s,
            &errors,
            estimated_level,
            estimated_trend,
            estimated_season
    );

    LONG_DOUBLE value = estimated_level[nb_computations - 1];

    if(forecast)
        *forecast = 0.0;

    FUNC2(estimated_level);
    FUNC2(estimated_trend);
    FUNC2(estimated_season);

    if(!ret)
        return 0.0;

    return value;
}