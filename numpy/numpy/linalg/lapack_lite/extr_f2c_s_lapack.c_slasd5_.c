
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int dabs (float) ;
 float sqrt (float) ;

int slasd5_(integer *i__, real *d__, real *z__, real *delta,
 real *rho, real *dsigma, real *work)
{

    real r__1;


    static real b, c__, w, del, tau, delsq;
    --work;
    --delta;
    --z__;
    --d__;


    del = d__[2] - d__[1];
    delsq = del * (d__[2] + d__[1]);
    if (*i__ == 1) {
 w = *rho * 4.f * (z__[2] * z__[2] / (d__[1] + d__[2] * 3.f) - z__[1] *
   z__[1] / (d__[1] * 3.f + d__[2])) / del + 1.f;
 if (w > 0.f) {
     b = delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
     c__ = *rho * z__[1] * z__[1] * delsq;







     tau = c__ * 2.f / (b + sqrt((r__1 = b * b - c__ * 4.f, dabs(r__1))
      ));



     tau /= d__[1] + sqrt(d__[1] * d__[1] + tau);
     *dsigma = d__[1] + tau;
     delta[1] = -tau;
     delta[2] = del - tau;
     work[1] = d__[1] * 2.f + tau;
     work[2] = d__[1] + tau + d__[2];




 } else {
     b = -delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
     c__ = *rho * z__[2] * z__[2] * delsq;



     if (b > 0.f) {
  tau = c__ * -2.f / (b + sqrt(b * b + c__ * 4.f));
     } else {
  tau = (b - sqrt(b * b + c__ * 4.f)) / 2.f;
     }



     tau /= d__[2] + sqrt((r__1 = d__[2] * d__[2] + tau, dabs(r__1)));
     *dsigma = d__[2] + tau;
     delta[1] = -(del + tau);
     delta[2] = -tau;
     work[1] = d__[1] + tau + d__[2];
     work[2] = d__[2] * 2.f + tau;




 }





    } else {



 b = -delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
 c__ = *rho * z__[2] * z__[2] * delsq;



 if (b > 0.f) {
     tau = (b + sqrt(b * b + c__ * 4.f)) / 2.f;
 } else {
     tau = c__ * 2.f / (-b + sqrt(b * b + c__ * 4.f));
 }



 tau /= d__[2] + sqrt(d__[2] * d__[2] + tau);
 *dsigma = d__[2] + tau;
 delta[1] = -(del + tau);
 delta[2] = -tau;
 work[1] = d__[1] + tau + d__[2];
 work[2] = d__[2] * 2.f + tau;







    }
    return 0;



}
