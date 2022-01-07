
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int logical ;
typedef int integer ;
typedef float doublereal ;


 int FALSE_ ;
 int TRUE_ ;
 float c_b15 ;
 float c_b3178 ;
 float dabs (float) ;
 float r_sign (float*,float*) ;
 float sqrt (float) ;

int slasv2_(real *f, real *g, real *h__, real *ssmin, real *
 ssmax, real *snr, real *csr, real *snl, real *csl)
{

    real r__1;


    static real a, d__, l, m, r__, s, t, fa, ga, ha, ft, gt, ht, mm, tt, clt,
     crt, slt, srt;
    static integer pmax;
    static real temp;
    static logical swap;
    static real tsign;
    static logical gasmal;
    extern doublereal slamch_(char *);
    ft = *f;
    fa = dabs(ft);
    ht = *h__;
    ha = dabs(*h__);
    pmax = 1;
    swap = ha > fa;
    if (swap) {
 pmax = 3;
 temp = ft;
 ft = ht;
 ht = temp;
 temp = fa;
 fa = ha;
 ha = temp;



    }
    gt = *g;
    ga = dabs(gt);
    if (ga == 0.f) {



 *ssmin = ha;
 *ssmax = fa;
 clt = 1.f;
 crt = 1.f;
 slt = 0.f;
 srt = 0.f;
    } else {
 gasmal = TRUE_;
 if (ga > fa) {
     pmax = 2;
     if (fa / ga < slamch_("EPS")) {



  gasmal = FALSE_;
  *ssmax = ga;
  if (ha > 1.f) {
      *ssmin = fa / (ga / ha);
  } else {
      *ssmin = fa / ga * ha;
  }
  clt = 1.f;
  slt = ht / gt;
  srt = 1.f;
  crt = ft / gt;
     }
 }
 if (gasmal) {



     d__ = fa - ha;
     if (d__ == fa) {



  l = 1.f;
     } else {
  l = d__ / fa;
     }



     m = gt / ft;



     t = 2.f - l;



     mm = m * m;
     tt = t * t;
     s = sqrt(tt + mm);



     if (l == 0.f) {
  r__ = dabs(m);
     } else {
  r__ = sqrt(l * l + mm);
     }



     a = (s + r__) * .5f;



     *ssmin = ha / a;
     *ssmax = fa * a;
     if (mm == 0.f) {



  if (l == 0.f) {
      t = r_sign(&c_b3178, &ft) * r_sign(&c_b15, &gt);
  } else {
      t = gt / r_sign(&d__, &ft) + m / t;
  }
     } else {
  t = (m / (s + t) + m / (r__ + l)) * (a + 1.f);
     }
     l = sqrt(t * t + 4.f);
     crt = 2.f / l;
     srt = t / l;
     clt = (crt + srt * m) / a;
     slt = ht / ft * srt / a;
 }
    }
    if (swap) {
 *csl = srt;
 *snl = crt;
 *csr = slt;
 *snr = clt;
    } else {
 *csl = clt;
 *snl = slt;
 *csr = crt;
 *snr = srt;
    }



    if (pmax == 1) {
 tsign = r_sign(&c_b15, csr) * r_sign(&c_b15, csl) * r_sign(&c_b15, f);
    }
    if (pmax == 2) {
 tsign = r_sign(&c_b15, snr) * r_sign(&c_b15, csl) * r_sign(&c_b15, g);
    }
    if (pmax == 3) {
 tsign = r_sign(&c_b15, snr) * r_sign(&c_b15, snl) * r_sign(&c_b15,
  h__);
    }
    *ssmax = r_sign(ssmax, &tsign);
    r__1 = tsign * r_sign(&c_b15, f) * r_sign(&c_b15, h__);
    *ssmin = r_sign(ssmin, &r__1);
    return 0;



}
