
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int doublereal ;


 int abs (int) ;
 int max (int,int) ;
 int min (int,int) ;
 int sqrt (int) ;

int dlas2_(doublereal *f, doublereal *g, doublereal *h__,
 doublereal *ssmin, doublereal *ssmax)
{

    doublereal d__1, d__2;


    static doublereal c__, fa, ga, ha, as, at, au, fhmn, fhmx;
    fa = abs(*f);
    ga = abs(*g);
    ha = abs(*h__);
    fhmn = min(fa,ha);
    fhmx = max(fa,ha);
    if (fhmn == 0.) {
 *ssmin = 0.;
 if (fhmx == 0.) {
     *ssmax = ga;
 } else {

     d__1 = min(fhmx,ga) / max(fhmx,ga);
     *ssmax = max(fhmx,ga) * sqrt(d__1 * d__1 + 1.);
 }
    } else {
 if (ga < fhmx) {
     as = fhmn / fhmx + 1.;
     at = (fhmx - fhmn) / fhmx;

     d__1 = ga / fhmx;
     au = d__1 * d__1;
     c__ = 2. / (sqrt(as * as + au) + sqrt(at * at + au));
     *ssmin = fhmn * c__;
     *ssmax = fhmx / c__;
 } else {
     au = fhmx / ga;
     if (au == 0.) {







  *ssmin = fhmn * fhmx / ga;
  *ssmax = ga;
     } else {
  as = fhmn / fhmx + 1.;
  at = (fhmx - fhmn) / fhmx;

  d__1 = as * au;

  d__2 = at * au;
  c__ = 1. / (sqrt(d__1 * d__1 + 1.) + sqrt(d__2 * d__2 + 1.));
  *ssmin = fhmn * c__ * au;
  *ssmin += *ssmin;
  *ssmax = ga / (c__ + c__);
     }
 }
    }
    return 0;



}
