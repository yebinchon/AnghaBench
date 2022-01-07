
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int MatrixMode; } ;
struct TYPE_8__ {void* NewTextureMatrix; int TextureMatrix; void* NewProjectionMatrix; int ProjectionMatrix; void* NewModelViewMatrix; int ModelViewMatrix; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;



 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_problem (TYPE_2__*,char*) ;
 int matmul (int ,int ,int const*) ;

void gl_MultMatrixf( GLcontext *ctx, const GLfloat *m )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glMultMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         matmul( ctx->ModelViewMatrix, ctx->ModelViewMatrix, m );
  ctx->NewModelViewMatrix = GL_TRUE;
  break;
      case 129:
  matmul( ctx->ProjectionMatrix, ctx->ProjectionMatrix, m );
  ctx->NewProjectionMatrix = GL_TRUE;
  break;
      case 128:
  matmul( ctx->TextureMatrix, ctx->TextureMatrix, m );
  ctx->NewTextureMatrix = GL_TRUE;
  break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_MultMatrixf");
   }
}
