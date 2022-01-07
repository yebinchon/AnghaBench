
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int MatrixMode; } ;
struct TYPE_8__ {void* NewTextureMatrix; void* TextureMatrixType; int TextureMatrix; void* NewProjectionMatrix; void* ProjectionMatrixType; int ProjectionMatrix; void* NewModelViewMatrix; void* ModelViewMatrixType; int ModelViewInv; int ModelViewMatrix; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 void* GL_FALSE ;
 int GL_INVALID_OPERATION ;



 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int Identity ;
 void* MATRIX_IDENTITY ;
 int MEMCPY (int ,int ,int) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_problem (TYPE_2__*,char*) ;

void gl_LoadIdentity( GLcontext *ctx )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLoadIdentity" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         MEMCPY( ctx->ModelViewMatrix, Identity, 16*sizeof(GLfloat) );
         MEMCPY( ctx->ModelViewInv, Identity, 16*sizeof(GLfloat) );
         ctx->ModelViewMatrixType = MATRIX_IDENTITY;
  ctx->NewModelViewMatrix = GL_FALSE;
  break;
      case 129:
  MEMCPY( ctx->ProjectionMatrix, Identity, 16*sizeof(GLfloat) );
         ctx->ProjectionMatrixType = MATRIX_IDENTITY;
  ctx->NewProjectionMatrix = GL_FALSE;
  break;
      case 128:
  MEMCPY( ctx->TextureMatrix, Identity, 16*sizeof(GLfloat) );
         ctx->TextureMatrixType = MATRIX_IDENTITY;
  ctx->NewTextureMatrix = GL_FALSE;
  break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_LoadIdentity");
   }
}
