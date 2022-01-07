
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pres_dot (double*,int) ;

__attribute__((used)) static double pres_dotswiz6(double *args, int n)
{
    return pres_dot(args, 3);
}
