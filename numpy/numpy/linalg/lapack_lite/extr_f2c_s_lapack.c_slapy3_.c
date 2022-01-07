
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef float doublereal ;


 float dabs (float) ;
 float dmax (float,float) ;
 float max (float,float) ;
 float sqrt (float) ;

doublereal slapy3_(real *x, real *y, real *z__)
{

    real ret_val, r__1, r__2, r__3;


    static real w, xabs, yabs, zabs;
    xabs = dabs(*x);
    yabs = dabs(*y);
    zabs = dabs(*z__);

    r__1 = max(xabs,yabs);
    w = dmax(r__1,zabs);
    if (w == 0.f) {





 ret_val = xabs + yabs + zabs;
    } else {

 r__1 = xabs / w;

 r__2 = yabs / w;

 r__3 = zabs / w;
 ret_val = w * sqrt(r__1 * r__1 + r__2 * r__2 + r__3 * r__3);
    }
    return ret_val;



}
