
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int MatrixMode; } ;
struct TYPE_8__ {int* ModelViewMatrix; int* ProjectionMatrix; int* TextureMatrix; void* NewTextureMatrix; void* NewProjectionMatrix; void* NewModelViewMatrix; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;



 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_problem (TYPE_2__*,char*) ;

void gl_Translatef( GLcontext *ctx, GLfloat x, GLfloat y, GLfloat z )
{
   GLfloat *m;
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glTranslate" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         m = ctx->ModelViewMatrix;
  ctx->NewModelViewMatrix = GL_TRUE;
  break;
      case 129:
         m = ctx->ProjectionMatrix;
  ctx->NewProjectionMatrix = GL_TRUE;
  break;
      case 128:
         m = ctx->TextureMatrix;
  ctx->NewTextureMatrix = GL_TRUE;
  break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_Translatef");
         return;
   }

   m[12] = m[0] * x + m[4] * y + m[8] * z + m[12];
   m[13] = m[1] * x + m[5] * y + m[9] * z + m[13];
   m[14] = m[2] * x + m[6] * y + m[10] * z + m[14];
   m[15] = m[3] * x + m[7] * y + m[11] * z + m[15];
}
