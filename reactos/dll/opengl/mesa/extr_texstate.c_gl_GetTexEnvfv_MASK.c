#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  EnvColor; int /*<<< orphan*/  EnvMode; } ;
struct TYPE_6__ {TYPE_1__ Texture; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 scalar_t__ GL_TEXTURE_ENV ; 
#define  GL_TEXTURE_ENV_COLOR 129 
#define  GL_TEXTURE_ENV_MODE 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext *ctx,
                     GLenum target, GLenum pname, GLfloat *params )
{
   if (target!=GL_TEXTURE_ENV) {
      FUNC2( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(target)" );
      return;
   }
   switch (pname) {
      case GL_TEXTURE_ENV_MODE:
         *params = FUNC1(ctx->Texture.EnvMode);
	 break;
      case GL_TEXTURE_ENV_COLOR:
	 FUNC0( params, ctx->Texture.EnvColor );
	 break;
      default:
         FUNC2( ctx, GL_INVALID_ENUM, "glGetTexEnvfv(pname)" );
   }
}