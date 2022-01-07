
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef float doublereal ;


 float dabs (float) ;
 float dmax (float,float) ;
 float dmin (float,float) ;
 float sqrt (float) ;

doublereal slapy2_(real *x, real *y)
{

    real ret_val, r__1;


    static real w, z__, xabs, yabs;
    xabs = dabs(*x);
    yabs = dabs(*y);
    w = dmax(xabs,yabs);
    z__ = dmin(xabs,yabs);
    if (z__ == 0.f) {
 ret_val = w;
    } else {

 r__1 = z__ / w;
 ret_val = w * sqrt(r__1 * r__1 + 1.f);
    }
    return ret_val;



}
