
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;
 double log (int) ;
 double log2 (double) ;

__attribute__((used)) static double pres_log(double *args, int n)
{
    double v;

    v = fabs(args[0]);
    if (v == 0.0)
        return 0.0;
    else



        return log(v) / log(2);

}
