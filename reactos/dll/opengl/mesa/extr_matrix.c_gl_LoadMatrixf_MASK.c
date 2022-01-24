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
struct TYPE_10__ {int /*<<< orphan*/  (* NearFar ) (TYPE_3__*,float,float) ;} ;
struct TYPE_9__ {int MatrixMode; } ;
struct TYPE_11__ {float** NearFarStack; size_t ProjectionStackDepth; void* NewTextureMatrix; int /*<<< orphan*/  TextureMatrix; TYPE_2__ Driver; void* NewProjectionMatrix; int /*<<< orphan*/  ProjectionMatrix; void* NewModelViewMatrix; int /*<<< orphan*/  ModelViewMatrix; TYPE_1__ Transform; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_MODELVIEW 130 
#define  GL_PROJECTION 129 
#define  GL_TEXTURE 128 
 void* GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 float FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,float,float) ; 

void FUNC6( GLcontext *ctx, const GLfloat *m )
{
   if (FUNC0(ctx)) {
      FUNC3( ctx,  GL_INVALID_OPERATION, "glLoadMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case GL_MODELVIEW:
         FUNC2( ctx->ModelViewMatrix, m, 16*sizeof(GLfloat) );
	 ctx->NewModelViewMatrix = GL_TRUE;
	 break;
      case GL_PROJECTION:
	 FUNC2( ctx->ProjectionMatrix, m, 16*sizeof(GLfloat) );
	 ctx->NewProjectionMatrix = GL_TRUE;
         {
            float n,f,c,d;

#define M(row,col)  m[col*4+row]
            c = M(2,2);
            d = M(2,3);
#undef M
            n = d / (c-1);
            f = d / (c+1);

            /* Need to keep a stack of near/far values in case the user
             * push/pops the projection matrix stack so that we can call
             * Driver.NearFar() after a pop.
             */
            ctx->NearFarStack[ctx->ProjectionStackDepth][0] = n;
            ctx->NearFarStack[ctx->ProjectionStackDepth][1] = f;

            if (ctx->Driver.NearFar) {
               (*ctx->Driver.NearFar)( ctx, n, f );
            }
         }
	 break;
      case GL_TEXTURE:
	 FUNC2( ctx->TextureMatrix, m, 16*sizeof(GLfloat) );
	 ctx->NewTextureMatrix = GL_TRUE;
	 break;
      default:
         FUNC4(ctx, "Bad matrix mode in gl_LoadMatrixf");
   }
}