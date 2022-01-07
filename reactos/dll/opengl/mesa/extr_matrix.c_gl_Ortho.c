
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* NearFar ) (TYPE_2__*,double,double) ;} ;
struct TYPE_7__ {TYPE_1__ Driver; } ;
typedef double GLfloat ;
typedef double GLdouble ;
typedef TYPE_2__ GLcontext ;


 double M (int,int) ;
 int gl_MultMatrixf (TYPE_2__*,double*) ;
 int stub1 (TYPE_2__*,double,double) ;

void gl_Ortho( GLcontext *ctx,
               GLdouble left, GLdouble right,
               GLdouble bottom, GLdouble top,
               GLdouble nearval, GLdouble farval )
{
   GLfloat x, y, z;
   GLfloat tx, ty, tz;
   GLfloat m[16];

   x = 2.0 / (right-left);
   y = 2.0 / (top-bottom);
   z = -2.0 / (farval-nearval);
   tx = -(right+left) / (right-left);
   ty = -(top+bottom) / (top-bottom);
   tz = -(farval+nearval) / (farval-nearval);


   m[0*4+0] = x; m[1*4+0] = 0.0F; m[2*4+0] = 0.0F; m[3*4+0] = tx;
   m[0*4+1] = 0.0F; m[1*4+1] = y; m[2*4+1] = 0.0F; m[3*4+1] = ty;
   m[0*4+2] = 0.0F; m[1*4+2] = 0.0F; m[2*4+2] = z; m[3*4+2] = tz;
   m[0*4+3] = 0.0F; m[1*4+3] = 0.0F; m[2*4+3] = 0.0F; m[3*4+3] = 1.0F;


   gl_MultMatrixf( ctx, m );

   if (ctx->Driver.NearFar) {
      (*ctx->Driver.NearFar)( ctx, nearval, farval );
   }
}
