
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;


 float dabs (float) ;
 float dmax (float,float) ;
 float dmin (float,float) ;
 float sqrt (float) ;

int slas2_(real *f, real *g, real *h__, real *ssmin, real *
 ssmax)
{

    real r__1, r__2;


    static real c__, fa, ga, ha, as, at, au, fhmn, fhmx;
    fa = dabs(*f);
    ga = dabs(*g);
    ha = dabs(*h__);
    fhmn = dmin(fa,ha);
    fhmx = dmax(fa,ha);
    if (fhmn == 0.f) {
 *ssmin = 0.f;
 if (fhmx == 0.f) {
     *ssmax = ga;
 } else {

     r__1 = dmin(fhmx,ga) / dmax(fhmx,ga);
     *ssmax = dmax(fhmx,ga) * sqrt(r__1 * r__1 + 1.f);
 }
    } else {
 if (ga < fhmx) {
     as = fhmn / fhmx + 1.f;
     at = (fhmx - fhmn) / fhmx;

     r__1 = ga / fhmx;
     au = r__1 * r__1;
     c__ = 2.f / (sqrt(as * as + au) + sqrt(at * at + au));
     *ssmin = fhmn * c__;
     *ssmax = fhmx / c__;
 } else {
     au = fhmx / ga;
     if (au == 0.f) {







  *ssmin = fhmn * fhmx / ga;
  *ssmax = ga;
     } else {
  as = fhmn / fhmx + 1.f;
  at = (fhmx - fhmn) / fhmx;

  r__1 = as * au;

  r__2 = at * au;
  c__ = 1.f / (sqrt(r__1 * r__1 + 1.f) + sqrt(r__2 * r__2 + 1.f)
   );
  *ssmin = fhmn * c__ * au;
  *ssmin += *ssmin;
  *ssmax = ga / (c__ + c__);
     }
 }
    }
    return 0;



}
