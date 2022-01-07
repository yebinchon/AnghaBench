
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 int abs (int) ;
 int max (int,int) ;
 int sqrt (int) ;

doublereal dlapy3_(doublereal *x, doublereal *y, doublereal *z__)
{

    doublereal ret_val, d__1, d__2, d__3;


    static doublereal w, xabs, yabs, zabs;
    xabs = abs(*x);
    yabs = abs(*y);
    zabs = abs(*z__);

    d__1 = max(xabs,yabs);
    w = max(d__1,zabs);
    if (w == 0.) {





 ret_val = xabs + yabs + zabs;
    } else {

 d__1 = xabs / w;

 d__2 = yabs / w;

 d__3 = zabs / w;
 ret_val = w * sqrt(d__1 * d__1 + d__2 * d__2 + d__3 * d__3);
    }
    return ret_val;



}
