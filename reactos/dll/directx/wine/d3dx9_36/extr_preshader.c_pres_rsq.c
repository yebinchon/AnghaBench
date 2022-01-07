
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double INFINITY ;
 double fabs (double) ;
 double sqrt (double) ;

__attribute__((used)) static double pres_rsq(double *args, int n)
{
    double v;

    v = fabs(args[0]);
    if (v == 0.0)
        return INFINITY;
    else
        return 1.0 / sqrt(v);
}
