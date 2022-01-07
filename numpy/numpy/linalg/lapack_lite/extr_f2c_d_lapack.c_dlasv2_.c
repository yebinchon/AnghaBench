
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef int integer ;
typedef int doublereal ;


 int EPSILON ;
 int FALSE_ ;
 int TRUE_ ;
 int abs (int) ;
 int c_b15 ;
 int c_b3192 ;
 int d_sign (int*,int*) ;
 int sqrt (int) ;

int dlasv2_(doublereal *f, doublereal *g, doublereal *h__,
 doublereal *ssmin, doublereal *ssmax, doublereal *snr, doublereal *
 csr, doublereal *snl, doublereal *csl)
{

    doublereal d__1;


    static doublereal a, d__, l, m, r__, s, t, fa, ga, ha, ft, gt, ht, mm, tt,
      clt, crt, slt, srt;
    static integer pmax;
    static doublereal temp;
    static logical swap;
    static doublereal tsign;

    static logical gasmal;
    ft = *f;
    fa = abs(ft);
    ht = *h__;
    ha = abs(*h__);
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
    ga = abs(gt);
    if (ga == 0.) {



 *ssmin = ha;
 *ssmax = fa;
 clt = 1.;
 crt = 1.;
 slt = 0.;
 srt = 0.;
    } else {
 gasmal = TRUE_;
 if (ga > fa) {
     pmax = 2;
     if (fa / ga < EPSILON) {



  gasmal = FALSE_;
  *ssmax = ga;
  if (ha > 1.) {
      *ssmin = fa / (ga / ha);
  } else {
      *ssmin = fa / ga * ha;
  }
  clt = 1.;
  slt = ht / gt;
  srt = 1.;
  crt = ft / gt;
     }
 }
 if (gasmal) {



     d__ = fa - ha;
     if (d__ == fa) {



  l = 1.;
     } else {
  l = d__ / fa;
     }



     m = gt / ft;



     t = 2. - l;



     mm = m * m;
     tt = t * t;
     s = sqrt(tt + mm);



     if (l == 0.) {
  r__ = abs(m);
     } else {
  r__ = sqrt(l * l + mm);
     }



     a = (s + r__) * .5;



     *ssmin = ha / a;
     *ssmax = fa * a;
     if (mm == 0.) {



  if (l == 0.) {
      t = d_sign(&c_b3192, &ft) * d_sign(&c_b15, &gt);
  } else {
      t = gt / d_sign(&d__, &ft) + m / t;
  }
     } else {
  t = (m / (s + t) + m / (r__ + l)) * (a + 1.);
     }
     l = sqrt(t * t + 4.);
     crt = 2. / l;
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
 tsign = d_sign(&c_b15, csr) * d_sign(&c_b15, csl) * d_sign(&c_b15, f);
    }
    if (pmax == 2) {
 tsign = d_sign(&c_b15, snr) * d_sign(&c_b15, csl) * d_sign(&c_b15, g);
    }
    if (pmax == 3) {
 tsign = d_sign(&c_b15, snr) * d_sign(&c_b15, snl) * d_sign(&c_b15,
  h__);
    }
    *ssmax = d_sign(ssmax, &tsign);
    d__1 = tsign * d_sign(&c_b15, f) * d_sign(&c_b15, h__);
    *ssmin = d_sign(ssmin, &d__1);
    return 0;



}
