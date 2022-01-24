#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* NearFar ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int MatrixMode; } ;
struct TYPE_11__ {size_t ModelViewStackDepth; size_t ProjectionStackDepth; size_t TextureStackDepth; void* NewTextureMatrix; int /*<<< orphan*/ * TextureStack; int /*<<< orphan*/  TextureMatrix; TYPE_2__ Driver; int /*<<< orphan*/ ** NearFarStack; void* NewProjectionMatrix; int /*<<< orphan*/ * ProjectionStack; int /*<<< orphan*/  ProjectionMatrix; void* NewModelViewMatrix; int /*<<< orphan*/ * ModelViewStack; int /*<<< orphan*/  ModelViewMatrix; TYPE_1__ Transform; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_MODELVIEW 130 
#define  GL_PROJECTION 129 
 int /*<<< orphan*/  GL_STACK_UNDERFLOW ; 
#define  GL_TEXTURE 128 
 void* GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5( GLcontext *ctx )
{
   if (FUNC0(ctx)) {
      FUNC2( ctx,  GL_INVALID_OPERATION, "glPopMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case GL_MODELVIEW:
         if (ctx->ModelViewStackDepth==0) {
            FUNC2( ctx,  GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->ModelViewStackDepth--;
         FUNC1( ctx->ModelViewMatrix,
                 ctx->ModelViewStack[ctx->ModelViewStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewModelViewMatrix = GL_TRUE;
         break;
      case GL_PROJECTION:
         if (ctx->ProjectionStackDepth==0) {
            FUNC2( ctx,  GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->ProjectionStackDepth--;
         FUNC1( ctx->ProjectionMatrix,
                 ctx->ProjectionStack[ctx->ProjectionStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewProjectionMatrix = GL_TRUE;

         /* Device driver near/far values */
         {
            GLfloat nearVal = ctx->NearFarStack[ctx->ProjectionStackDepth][0];
            GLfloat farVal  = ctx->NearFarStack[ctx->ProjectionStackDepth][1];
            if (ctx->Driver.NearFar) {
               (*ctx->Driver.NearFar)( ctx, nearVal, farVal );
            }
         }
         break;
      case GL_TEXTURE:
         if (ctx->TextureStackDepth==0) {
            FUNC2( ctx,  GL_STACK_UNDERFLOW, "glPopMatrix");
            return;
         }
         ctx->TextureStackDepth--;
         FUNC1( ctx->TextureMatrix,
                 ctx->TextureStack[ctx->TextureStackDepth],
                 16*sizeof(GLfloat) );
         ctx->NewTextureMatrix = GL_TRUE;
         break;
      default:
         FUNC3(ctx, "Bad matrix mode in gl_PopMatrix");
   }
}