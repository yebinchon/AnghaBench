
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int params ;


 double M_PI ;
 double cos (double) ;

__attribute__((used)) static double hanning(params *p, double x)
{
    return 0.5 + 0.5 * cos(M_PI * x);
}
