
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;
typedef double GLdouble ;


 double pow (float,float) ;

__attribute__((used)) static GLfloat gl_pow( GLfloat x, GLfloat y )
{
   GLdouble z = pow(x, y);
   if (z<1.0e-10)
      return 0.0F;
   else
      return (GLfloat) z;
}
