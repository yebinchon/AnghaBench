
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* ProjectionMatrix; int NewProjectionMatrix; int ProjectionMatrixType; } ;
typedef float GLfloat ;
typedef TYPE_1__ GLcontext ;


 int GL_FALSE ;
 int MATRIX_GENERAL ;
 int MATRIX_IDENTITY ;
 int MATRIX_ORTHO ;
 int MATRIX_PERSPECTIVE ;
 scalar_t__ is_identity (float const*) ;

void gl_analyze_projection_matrix( GLcontext *ctx )
{

   const GLfloat *m = ctx->ProjectionMatrix;
   if (is_identity(m)) {
      ctx->ProjectionMatrixType = MATRIX_IDENTITY;
   }
   else if ( m[4]==0.0F && m[8] ==0.0F
            && m[1]==0.0F && m[9] ==0.0F
            && m[2]==0.0F && m[6]==0.0F
            && m[3]==0.0F && m[7]==0.0F && m[11]==0.0F && m[15]==1.0F) {
      ctx->ProjectionMatrixType = MATRIX_ORTHO;
   }
   else if ( m[4]==0.0F && m[12]==0.0F
            && m[1]==0.0F && m[13]==0.0F
            && m[2]==0.0F && m[6]==0.0F
            && m[3]==0.0F && m[7]==0.0F && m[11]==-1.0F && m[15]==0.0F) {
      ctx->ProjectionMatrixType = MATRIX_PERSPECTIVE;
   }
   else {
      ctx->ProjectionMatrixType = MATRIX_GENERAL;
   }

   ctx->NewProjectionMatrix = GL_FALSE;
}
