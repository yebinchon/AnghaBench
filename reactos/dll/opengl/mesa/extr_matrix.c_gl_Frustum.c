
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* NearFar ) (TYPE_2__*,double,double) ;} ;
struct TYPE_8__ {double** NearFarStack; size_t ProjectionStackDepth; TYPE_1__ Driver; } ;
typedef double GLfloat ;
typedef double GLdouble ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_VALUE ;
 double M (int,int) ;
 int gl_MultMatrixf (TYPE_2__*,double*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int stub1 (TYPE_2__*,double,double) ;

void gl_Frustum( GLcontext *ctx,
                 GLdouble left, GLdouble right,
    GLdouble bottom, GLdouble top,
   GLdouble nearval, GLdouble farval )
{
   GLfloat x, y, a, b, c, d;
   GLfloat m[16];

   if (nearval<=0.0 || farval<=0.0) {
      gl_error( ctx, GL_INVALID_VALUE, "glFrustum(near or far)" );
   }

   x = (2.0*nearval) / (right-left);
   y = (2.0*nearval) / (top-bottom);
   a = (right+left) / (right-left);
   b = (top+bottom) / (top-bottom);
   c = -(farval+nearval) / ( farval-nearval);
   d = -(2.0*farval*nearval) / (farval-nearval);


   m[0*4+0] = x; m[1*4+0] = 0.0F; m[2*4+0] = a; m[3*4+0] = 0.0F;
   m[0*4+1] = 0.0F; m[1*4+1] = y; m[2*4+1] = b; m[3*4+1] = 0.0F;
   m[0*4+2] = 0.0F; m[1*4+2] = 0.0F; m[2*4+2] = c; m[3*4+2] = d;
   m[0*4+3] = 0.0F; m[1*4+3] = 0.0F; m[2*4+3] = -1.0F; m[3*4+3] = 0.0F;


   gl_MultMatrixf( ctx, m );






   ctx->NearFarStack[ctx->ProjectionStackDepth][0] = nearval;
   ctx->NearFarStack[ctx->ProjectionStackDepth][1] = farval;

   if (ctx->Driver.NearFar) {
      (*ctx->Driver.NearFar)( ctx, nearval, farval );
   }
}
