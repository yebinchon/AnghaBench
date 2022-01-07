
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 int abs (int) ;
 int max (int,int) ;
 int min (int,int) ;
 int sqrt (int) ;

doublereal dlapy2_(doublereal *x, doublereal *y)
{

    doublereal ret_val, d__1;


    static doublereal w, z__, xabs, yabs;
    xabs = abs(*x);
    yabs = abs(*y);
    w = max(xabs,yabs);
    z__ = min(xabs,yabs);
    if (z__ == 0.) {
 ret_val = w;
    } else {

 d__1 = z__ / w;
 ret_val = w * sqrt(d__1 * d__1 + 1.);
    }
    return ret_val;



}
