
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* NearFar ) (TYPE_3__*,float,float) ;} ;
struct TYPE_9__ {int MatrixMode; } ;
struct TYPE_11__ {float** NearFarStack; size_t ProjectionStackDepth; void* NewTextureMatrix; int TextureMatrix; TYPE_2__ Driver; void* NewProjectionMatrix; int ProjectionMatrix; void* NewModelViewMatrix; int ModelViewMatrix; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int GL_INVALID_OPERATION ;



 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 float M (int,int) ;
 int MEMCPY (int ,int const*,int) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_problem (TYPE_3__*,char*) ;
 int stub1 (TYPE_3__*,float,float) ;

void gl_LoadMatrixf( GLcontext *ctx, const GLfloat *m )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLoadMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         MEMCPY( ctx->ModelViewMatrix, m, 16*sizeof(GLfloat) );
  ctx->NewModelViewMatrix = GL_TRUE;
  break;
      case 129:
  MEMCPY( ctx->ProjectionMatrix, m, 16*sizeof(GLfloat) );
  ctx->NewProjectionMatrix = GL_TRUE;
         {
            float n,f,c,d;


            c = m[2*4+2];
            d = m[3*4+2];

            n = d / (c-1);
            f = d / (c+1);





            ctx->NearFarStack[ctx->ProjectionStackDepth][0] = n;
            ctx->NearFarStack[ctx->ProjectionStackDepth][1] = f;

            if (ctx->Driver.NearFar) {
               (*ctx->Driver.NearFar)( ctx, n, f );
            }
         }
  break;
      case 128:
  MEMCPY( ctx->TextureMatrix, m, 16*sizeof(GLfloat) );
  ctx->NewTextureMatrix = GL_TRUE;
  break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_LoadMatrixf");
   }
}
