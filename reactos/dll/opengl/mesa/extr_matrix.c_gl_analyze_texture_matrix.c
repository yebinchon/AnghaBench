
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* TextureMatrix; int NewTextureMatrix; int TextureMatrixType; } ;
typedef float GLfloat ;
typedef TYPE_1__ GLcontext ;


 int GL_FALSE ;
 int MATRIX_2D ;
 int MATRIX_3D ;
 int MATRIX_GENERAL ;
 int MATRIX_IDENTITY ;
 scalar_t__ is_identity (float const*) ;

void gl_analyze_texture_matrix( GLcontext *ctx )
{
   const GLfloat *m = ctx->TextureMatrix;
   if (is_identity(m)) {
      ctx->TextureMatrixType = MATRIX_IDENTITY;
   }
   else if ( m[ 8]==0.0F
            && m[ 9]==0.0F
            && m[2]==0.0F && m[6]==0.0F && m[10]==1.0F && m[14]==0.0F
            && m[3]==0.0F && m[7]==0.0F && m[11]==0.0F && m[15]==1.0F) {
      ctx->TextureMatrixType = MATRIX_2D;
   }
   else if (m[3]==0.0F && m[7]==0.0F && m[11]==0.0F && m[15]==1.0F) {
      ctx->TextureMatrixType = MATRIX_3D;
   }
   else {
      ctx->TextureMatrixType = MATRIX_GENERAL;
   }

   ctx->NewTextureMatrix = GL_FALSE;
}
