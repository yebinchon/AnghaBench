
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 int abs (int) ;
 int sqrt (int) ;

int dlae2_(doublereal *a, doublereal *b, doublereal *c__,
 doublereal *rt1, doublereal *rt2)
{

    doublereal d__1;


    static doublereal ab, df, tb, sm, rt, adf, acmn, acmx;
    sm = *a + *c__;
    df = *a - *c__;
    adf = abs(df);
    tb = *b + *b;
    ab = abs(tb);
    if (abs(*a) > abs(*c__)) {
 acmx = *a;
 acmn = *c__;
    } else {
 acmx = *c__;
 acmn = *a;
    }
    if (adf > ab) {

 d__1 = ab / adf;
 rt = adf * sqrt(d__1 * d__1 + 1.);
    } else if (adf < ab) {

 d__1 = adf / ab;
 rt = ab * sqrt(d__1 * d__1 + 1.);
    } else {



 rt = ab * sqrt(2.);
    }
    if (sm < 0.) {
 *rt1 = (sm - rt) * .5;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else if (sm > 0.) {
 *rt1 = (sm + rt) * .5;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else {



 *rt1 = rt * .5;
 *rt2 = rt * -.5;
    }
    return 0;



}
