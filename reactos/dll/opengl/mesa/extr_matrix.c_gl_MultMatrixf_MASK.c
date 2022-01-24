#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int MatrixMode; } ;
struct TYPE_8__ {void* NewTextureMatrix; int /*<<< orphan*/  TextureMatrix; void* NewProjectionMatrix; int /*<<< orphan*/  ProjectionMatrix; void* NewModelViewMatrix; int /*<<< orphan*/  ModelViewMatrix; TYPE_1__ Transform; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_MODELVIEW 130 
#define  GL_PROJECTION 129 
#define  GL_TEXTURE 128 
 void* GL_TRUE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

void FUNC4( GLcontext *ctx, const GLfloat *m )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx,  GL_INVALID_OPERATION, "glMultMatrix" );
      return;
   }
   switch (ctx->Transform.MatrixMode) {
      case GL_MODELVIEW:
         FUNC3( ctx->ModelViewMatrix, ctx->ModelViewMatrix, m );
	 ctx->NewModelViewMatrix = GL_TRUE;
	 break;
      case GL_PROJECTION:
	 FUNC3( ctx->ProjectionMatrix, ctx->ProjectionMatrix, m );
	 ctx->NewProjectionMatrix = GL_TRUE;
	 break;
      case GL_TEXTURE:
	 FUNC3( ctx->TextureMatrix, ctx->TextureMatrix, m );
	 ctx->NewTextureMatrix = GL_TRUE;
	 break;
      default:
         FUNC2(ctx, "Bad matrix mode in gl_MultMatrixf");
   }
}