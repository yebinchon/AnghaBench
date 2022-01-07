
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double W; } ;


 TYPE_1__ oldrs ;
 double reservoir_get_next_S (TYPE_1__*,double,int) ;

double
anl_get_next_S(double t, int n, double *stateptr)
{
 double result;

 oldrs.W = *stateptr;
 result = reservoir_get_next_S(&oldrs, t, n);
 *stateptr = oldrs.W;
 return result;
}
