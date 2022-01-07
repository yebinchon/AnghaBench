
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int MapGrid2u2; int MapGrid2u1; int MapGrid2v2; int MapGrid2v1; scalar_t__ MapGrid2vn; scalar_t__ MapGrid2un; } ;
struct TYPE_10__ {TYPE_1__ Eval; } ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;

 int GL_LINE_STRIP ;

 int GL_POINTS ;
 int GL_TRIANGLE_STRIP ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int I_TO_U (int ,int) ;
 int J_TO_V (int ,int) ;
 int gl_Begin (TYPE_2__*,int ) ;
 int gl_End (TYPE_2__*) ;
 int gl_EvalCoord2f (TYPE_2__*,int,int) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_EvalMesh2( GLcontext* ctx, GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 )
{
 GLint i, j;
 GLfloat u, du, v, dv, v1, v2;

 if (INSIDE_BEGIN_END(ctx)) {
  gl_error( ctx, GL_INVALID_OPERATION, "glEvalMesh2" );
  return;
 }

 du = (ctx->Eval.MapGrid2u2 - ctx->Eval.MapGrid2u1)
  / (GLfloat) ctx->Eval.MapGrid2un;
 dv = (ctx->Eval.MapGrid2v2 - ctx->Eval.MapGrid2v1)
  / (GLfloat) ctx->Eval.MapGrid2vn;
 switch (mode) {
 case 128:
  gl_Begin( ctx, GL_POINTS );
  for (j=j1;j<=j2;j++) {
   if ((j)==0) { v = ctx->Eval.MapGrid2v1; } else if ((j)==ctx->Eval.MapGrid2vn) { v = ctx->Eval.MapGrid2v2; } else { v = (j) * dv + ctx->Eval.MapGrid2v1; };
   for (i=i1;i<=i2;i++) {
    if ((i)==0) { u = ctx->Eval.MapGrid2u1; } else if ((i)==ctx->Eval.MapGrid2un) { u = ctx->Eval.MapGrid2u2; } else { u = (i) * du + ctx->Eval.MapGrid2u1; };
    gl_EvalCoord2f( ctx, u, v );
   }
  }
  gl_End(ctx);
  break;
 case 129:
  for (j=j1;j<=j2;j++) {
   if ((j)==0) { v = ctx->Eval.MapGrid2v1; } else if ((j)==ctx->Eval.MapGrid2vn) { v = ctx->Eval.MapGrid2v2; } else { v = (j) * dv + ctx->Eval.MapGrid2v1; };
   gl_Begin( ctx, GL_LINE_STRIP );
   for (i=i1;i<=i2;i++) {
    if ((i)==0) { u = ctx->Eval.MapGrid2u1; } else if ((i)==ctx->Eval.MapGrid2un) { u = ctx->Eval.MapGrid2u2; } else { u = (i) * du + ctx->Eval.MapGrid2u1; };
    gl_EvalCoord2f( ctx, u, v );
   }
   gl_End(ctx);
  }
  for (i=i1;i<=i2;i++) {
   if ((i)==0) { u = ctx->Eval.MapGrid2u1; } else if ((i)==ctx->Eval.MapGrid2un) { u = ctx->Eval.MapGrid2u2; } else { u = (i) * du + ctx->Eval.MapGrid2u1; };
   gl_Begin( ctx, GL_LINE_STRIP );
   for (j=j1;j<=j2;j++) {
    if ((j)==0) { v = ctx->Eval.MapGrid2v1; } else if ((j)==ctx->Eval.MapGrid2vn) { v = ctx->Eval.MapGrid2v2; } else { v = (j) * dv + ctx->Eval.MapGrid2v1; };
    gl_EvalCoord2f( ctx, u, v );
   }
   gl_End(ctx);
  }
  break;
 case 130:
  for (j=j1;j<j2;j++) {


   gl_Begin( ctx, GL_TRIANGLE_STRIP );
   if ((j)==0) { v1 = ctx->Eval.MapGrid2v1; } else if ((j)==ctx->Eval.MapGrid2vn) { v1 = ctx->Eval.MapGrid2v2; } else { v1 = (j) * dv + ctx->Eval.MapGrid2v1; };
   if ((j+1)==0) { v2 = ctx->Eval.MapGrid2v1; } else if ((j+1)==ctx->Eval.MapGrid2vn) { v2 = ctx->Eval.MapGrid2v2; } else { v2 = (j+1) * dv + ctx->Eval.MapGrid2v1; };
   for (i=i1;i<=i2;i++) {
    if ((i)==0) { u = ctx->Eval.MapGrid2u1; } else if ((i)==ctx->Eval.MapGrid2un) { u = ctx->Eval.MapGrid2u2; } else { u = (i) * du + ctx->Eval.MapGrid2u1; };
    gl_EvalCoord2f( ctx, u, v1 );
    gl_EvalCoord2f( ctx, u, v2 );
   }
   gl_End(ctx);
  }
  break;
 default:
  gl_error( ctx, GL_INVALID_ENUM, "glEvalMesh2(mode)" );
  return;
 }



}
