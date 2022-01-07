
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int MatrixMode; } ;
struct TYPE_8__ {size_t ModelViewStackDepth; size_t ProjectionStackDepth; size_t TextureStackDepth; int TextureMatrix; int * TextureStack; int ** NearFarStack; int ProjectionMatrix; int * ProjectionStack; int ModelViewMatrix; int * ModelViewStack; TYPE_1__ Transform; } ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;


 int GL_STACK_OVERFLOW ;

 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int MAX_MODELVIEW_STACK_DEPTH ;
 size_t MAX_PROJECTION_STACK_DEPTH ;
 size_t MAX_TEXTURE_STACK_DEPTH ;
 int MEMCPY (int ,int ,int) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_problem (TYPE_2__*,char*) ;

void gl_PushMatrix( GLcontext *ctx )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPushMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case 130:
         if (ctx->ModelViewStackDepth>=MAX_MODELVIEW_STACK_DEPTH-1) {
            gl_error( ctx, GL_STACK_OVERFLOW, "glPushMatrix");
            return;
         }
         MEMCPY( ctx->ModelViewStack[ctx->ModelViewStackDepth],
                 ctx->ModelViewMatrix,
                 16*sizeof(GLfloat) );
         ctx->ModelViewStackDepth++;
         break;
      case 129:
         if (ctx->ProjectionStackDepth>=MAX_PROJECTION_STACK_DEPTH) {
            gl_error( ctx, GL_STACK_OVERFLOW, "glPushMatrix");
            return;
         }
         MEMCPY( ctx->ProjectionStack[ctx->ProjectionStackDepth],
                 ctx->ProjectionMatrix,
                 16*sizeof(GLfloat) );
         ctx->ProjectionStackDepth++;


         ctx->NearFarStack[ctx->ProjectionStackDepth][0]
            = ctx->NearFarStack[ctx->ProjectionStackDepth-1][0];
         ctx->NearFarStack[ctx->ProjectionStackDepth][1]
            = ctx->NearFarStack[ctx->ProjectionStackDepth-1][1];
         break;
      case 128:
         if (ctx->TextureStackDepth>=MAX_TEXTURE_STACK_DEPTH) {
            gl_error( ctx, GL_STACK_OVERFLOW, "glPushMatrix");
            return;
         }
         MEMCPY( ctx->TextureStack[ctx->TextureStackDepth],
                 ctx->TextureMatrix,
                 16*sizeof(GLfloat) );
         ctx->TextureStackDepth++;
         break;
      default:
         gl_problem(ctx, "Bad matrix mode in gl_PushMatrix");
   }
}
