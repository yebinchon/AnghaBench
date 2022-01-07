
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double GLfloat ;


 double log (double) ;

__attribute__((used)) static GLfloat compute_lambda( GLfloat s, GLfloat t,
                               GLfloat dsdx, GLfloat dsdy,
                               GLfloat dtdx, GLfloat dtdy,
                               GLfloat w, GLfloat dwdx, GLfloat dwdy,
                               GLfloat width, GLfloat height )
{

   GLfloat invw = 1.0 / w;
   GLfloat dudx, dudy, dvdx, dvdy;
   GLfloat r1, r2, rho2;

   dudx = (dsdx - s*dwdx) * invw * width;
   dudy = (dsdy - s*dwdy) * invw * width;
   dvdx = (dtdx - t*dwdx) * invw * height;
   dvdy = (dtdy - t*dwdy) * invw * height;

   r1 = dudx * dudx + dudy * dudy;
   r2 = dvdx * dvdx + dvdy * dvdy;


   rho2 = r1 + r2;
   if (rho2 <= 0.0F) {
      return 0.0F;
   }
   else {

      return log(rho2) * 1.442695 * 0.5;
   }
}
