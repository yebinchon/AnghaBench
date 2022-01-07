
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 float dabs (float) ;
 float sqrt (float) ;

int slaev2_(real *a, real *b, real *c__, real *rt1, real *
 rt2, real *cs1, real *sn1)
{

    real r__1;


    static real ab, df, cs, ct, tb, sm, tn, rt, adf, acs;
    static integer sgn1, sgn2;
    static real acmn, acmx;
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
 sgn1 = -1;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else if (sm > 0.f) {
 *rt1 = (sm + rt) * .5f;
 sgn1 = 1;







 *rt2 = acmx / *rt1 * acmn - *b / *rt1 * *b;
    } else {



 *rt1 = rt * .5f;
 *rt2 = rt * -.5f;
 sgn1 = 1;
    }



    if (df >= 0.f) {
 cs = df + rt;
 sgn2 = 1;
    } else {
 cs = df - rt;
 sgn2 = -1;
    }
    acs = dabs(cs);
    if (acs > ab) {
 ct = -tb / cs;
 *sn1 = 1.f / sqrt(ct * ct + 1.f);
 *cs1 = ct * *sn1;
    } else {
 if (ab == 0.f) {
     *cs1 = 1.f;
     *sn1 = 0.f;
 } else {
     tn = -cs / tb;
     *cs1 = 1.f / sqrt(tn * tn + 1.f);
     *sn1 = tn * *cs1;
 }
    }
    if (sgn1 == sgn2) {
 tn = *cs1;
 *cs1 = -(*sn1);
 *sn1 = tn;
    }
    return 0;



}
