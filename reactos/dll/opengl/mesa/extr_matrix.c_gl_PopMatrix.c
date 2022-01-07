
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* NearFar ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_9__ {int MatrixMode; } ;
struct TYPE_11__ {size_t ModelViewStackDepth; size_t ProjectionStackDepth; size_t TextureStackDepth; void* NewTextureMatrix; int * TextureStack; int TextureMatrix; TYPE_2__ Driver; int ** NearFarStack; void* NewProjectionMatrix; int * ProjectionStack; int ProjectionMatrix; void* NewModelViewMatrix; int * ModelViewStack; int ModelViewMatrix; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int GL_INVALID_OPERATION ;


 int GL_STACK_UNDERFLOW ;

 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int MEMCPY (int ,int ,int) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_problem (TYPE_3__*,char*) ;
 int stub1 (TYPE_3__*,int ,int ) ;

void gl_PopMatrix( GLcontext *ctx )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPopMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         if (ctx->ModelViewStackDepth==0) {
            gl_error( ctx, GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->ModelViewStackDepth--;
         MEMCPY( ctx->ModelViewMatrix,
                 ctx->ModelViewStack[ctx->ModelViewStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewModelViewMatrix = GL_TRUE;
         break;
      case 129:
         if (ctx->ProjectionStackDepth==0) {
            gl_error( ctx, GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->ProjectionStackDepth--;
         MEMCPY( ctx->ProjectionMatrix,
                 ctx->ProjectionStack[ctx->ProjectionStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewProjectionMatrix = GL_TRUE;


         {
            GLfloat nearVal = ctx->NearFarStack[ctx->ProjectionStackDepth][0];
            GLfloat farVal = ctx->NearFarStack[ctx->ProjectionStackDepth][1];
            if (ctx->Driver.NearFar) {
               (*ctx->Driver.NearFar)( ctx, nearVal, farVal );
            }
         }
         break;
      case 128:
         if (ctx->TextureStackDepth==0) {
            gl_error( ctx, GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->TextureStackDepth--;
         MEMCPY( ctx->TextureMatrix,
                 ctx->TextureStack[ctx->TextureStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewTextureMatrix = GL_TRUE;
         break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_PopMatrix");
   }
}
