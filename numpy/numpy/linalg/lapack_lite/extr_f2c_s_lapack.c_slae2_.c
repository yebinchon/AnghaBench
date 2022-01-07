
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;


 float dabs (float) ;
 float sqrt (float) ;

int slae2_(real *a, real *b, real *c__, real *rt1, real *rt2)
{

    real r__1;


    static real ab, df, tb, sm, rt, adf, acmn, acmx;
    sm = *a + *c__;
    df = *a - *c__;
    adf = dabs(df);
    tb = *b + *b;
    ab = dabs(tb);
    if (dabs(*a) > dabs(*c__)) {
 acmx = *a;
 acmn = *c__;
    } else {
 acmx = *c__;
 acmn = *a;
    }
    if (adf > ab) {

 r__1 = ab / adf;
 rt = adf * sqrt(r__1 * r__1 + 1.f);
    } else if (adf < ab) {

 r__1 = adf / ab;
 rt = ab * sqrt(r__1 * r__1 + 1.f);
    } else {



 rt = ab * sqrt(2.f);
    }
    if (sm < 0.f) {
 *rt1 = (sm - rt) * .5f;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else if (sm > 0.f) {
 *rt1 = (sm + rt) * .5f;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else {



 *rt1 = rt * .5f;
 *rt2 = rt * -.5f;
    }
    return 0;



}
