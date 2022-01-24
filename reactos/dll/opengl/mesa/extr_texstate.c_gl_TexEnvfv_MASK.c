#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* TexEnv ) (TYPE_3__*,scalar_t__,scalar_t__ const*) ;} ;
struct TYPE_8__ {void** EnvColor; scalar_t__ EnvMode; } ;
struct TYPE_10__ {TYPE_2__ Driver; TYPE_1__ Texture; } ;
typedef  int /*<<< orphan*/  GLint ;
typedef  scalar_t__ GLfloat ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 void* FUNC0 (scalar_t__ const,double,double) ; 
#define  GL_BLEND 131 
#define  GL_DECAL 130 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_MODULATE 129 
#define  GL_REPLACE 128 
 scalar_t__ GL_TEXTURE_ENV ; 
 scalar_t__ GL_TEXTURE_ENV_COLOR ; 
 scalar_t__ GL_TEXTURE_ENV_MODE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,scalar_t__ const*) ; 

void FUNC4( GLcontext *ctx,
                  GLenum target, GLenum pname, const GLfloat *param )
{
   if (FUNC1(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glTexEnv" );
      return;
   }

   if (target!=GL_TEXTURE_ENV) {
      FUNC2( ctx, GL_INVALID_ENUM, "glTexEnv(target)" );
      return;
   }

   if (pname==GL_TEXTURE_ENV_MODE) {
      GLenum mode = (GLenum) (GLint) *param;
      switch (mode) {
	 case GL_MODULATE:
	 case GL_BLEND:
	 case GL_DECAL:
	 case GL_REPLACE:
	    ctx->Texture.EnvMode = mode;
	    break;
	 default:
	    FUNC2( ctx, GL_INVALID_ENUM, "glTexEnv(param)" );
	    return;
      }
   }
   else if (pname==GL_TEXTURE_ENV_COLOR) {
      ctx->Texture.EnvColor[0] = FUNC0( param[0], 0.0, 1.0 );
      ctx->Texture.EnvColor[1] = FUNC0( param[1], 0.0, 1.0 );
      ctx->Texture.EnvColor[2] = FUNC0( param[2], 0.0, 1.0 );
      ctx->Texture.EnvColor[3] = FUNC0( param[3], 0.0, 1.0 );
   }
   else {
      FUNC2( ctx, GL_INVALID_ENUM, "glTexEnv(pname)" );
      return;
   }

   /* Tell device driver about the new texture environment */
   if (ctx->Driver.TexEnv) {
      (*ctx->Driver.TexEnv)( ctx, pname, param );
   }
}