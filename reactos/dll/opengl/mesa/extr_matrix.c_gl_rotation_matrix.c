
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double GLfloat ;


 double DEG2RAD ;
 double GL_SQRT (double) ;
 int Identity ;
 double M (int,int) ;
 int MEMCPY (double*,int ,int) ;
 double cos (double) ;
 double sin (double) ;

void gl_rotation_matrix( GLfloat angle, GLfloat x, GLfloat y, GLfloat z,
                         GLfloat m[] )
{

   GLfloat mag, s, c;
   GLfloat xx, yy, zz, xy, yz, zx, xs, ys, zs, one_c;

   s = sin( angle * DEG2RAD );
   c = cos( angle * DEG2RAD );

   mag = GL_SQRT( x*x + y*y + z*z );

   if (mag == 0.0) {

      MEMCPY(m, Identity, sizeof(GLfloat)*16);
      return;
   }

   x /= mag;
   y /= mag;
   z /= mag;
   xx = x * x;
   yy = y * y;
   zz = z * z;
   xy = x * y;
   yz = y * z;
   zx = z * x;
   xs = x * s;
   ys = y * s;
   zs = z * s;
   one_c = 1.0F - c;

   m[0*4+0] = (one_c * xx) + c;
   m[1*4+0] = (one_c * xy) - zs;
   m[2*4+0] = (one_c * zx) + ys;
   m[3*4+0] = 0.0F;

   m[0*4+1] = (one_c * xy) + zs;
   m[1*4+1] = (one_c * yy) + c;
   m[2*4+1] = (one_c * yz) - xs;
   m[3*4+1] = 0.0F;

   m[0*4+2] = (one_c * zx) - ys;
   m[1*4+2] = (one_c * yz) + xs;
   m[2*4+2] = (one_c * zz) + c;
   m[3*4+2] = 0.0F;

   m[0*4+3] = 0.0F;
   m[1*4+3] = 0.0F;
   m[2*4+3] = 0.0F;
   m[3*4+3] = 1.0F;


}
