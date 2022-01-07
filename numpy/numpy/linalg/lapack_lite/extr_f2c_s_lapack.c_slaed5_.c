
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int dabs (float) ;
 float sqrt (float) ;

int slaed5_(integer *i__, real *d__, real *z__, real *delta,
 real *rho, real *dlam)
{

    real r__1;


    static real b, c__, w, del, tau, temp;
    --delta;
    --z__;
    --d__;


    del = d__[2] - d__[1];
    if (*i__ == 1) {
 w = *rho * 2.f * (z__[2] * z__[2] - z__[1] * z__[1]) / del + 1.f;
 if (w > 0.f) {
     b = del + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
     c__ = *rho * z__[1] * z__[1] * del;



     tau = c__ * 2.f / (b + sqrt((r__1 = b * b - c__ * 4.f, dabs(r__1))
      ));
     *dlam = d__[1] + tau;
     delta[1] = -z__[1] / tau;
     delta[2] = z__[2] / (del - tau);
 } else {
     b = -del + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
     c__ = *rho * z__[2] * z__[2] * del;
     if (b > 0.f) {
  tau = c__ * -2.f / (b + sqrt(b * b + c__ * 4.f));
     } else {
  tau = (b - sqrt(b * b + c__ * 4.f)) / 2.f;
     }
     *dlam = d__[2] + tau;
     delta[1] = -z__[1] / (del + tau);
     delta[2] = -z__[2] / tau;
 }
 temp = sqrt(delta[1] * delta[1] + delta[2] * delta[2]);
 delta[1] /= temp;
 delta[2] /= temp;
    } else {



 b = -del + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
 c__ = *rho * z__[2] * z__[2] * del;
 if (b > 0.f) {
     tau = (b + sqrt(b * b + c__ * 4.f)) / 2.f;
 } else {
     tau = c__ * 2.f / (-b + sqrt(b * b + c__ * 4.f));
 }
 *dlam = d__[2] + tau;
 delta[1] = -z__[1] / (del + tau);
 delta[2] = -z__[2] / tau;
 temp = sqrt(delta[1] * delta[1] + delta[2] * delta[2]);
 delta[1] /= temp;
 delta[2] /= temp;
    }
    return 0;



}
