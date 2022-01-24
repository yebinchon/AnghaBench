#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* Current2D; TYPE_1__* Current1D; } ;
struct TYPE_10__ {TYPE_3__ Texture; } ;
struct TYPE_8__ {float* BorderColor; float Priority; int /*<<< orphan*/  WrapT; int /*<<< orphan*/  WrapS; int /*<<< orphan*/  MinFilter; int /*<<< orphan*/  MagFilter; } ;
struct TYPE_7__ {float* BorderColor; float Priority; int /*<<< orphan*/  WrapT; int /*<<< orphan*/  WrapS; int /*<<< orphan*/  MinFilter; int /*<<< orphan*/  MagFilter; } ;
typedef  float GLfloat ;
typedef  int GLenum ;
typedef  TYPE_4__ GLcontext ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
#define  GL_TEXTURE_1D 136 
#define  GL_TEXTURE_2D 135 
#define  GL_TEXTURE_BORDER_COLOR 134 
#define  GL_TEXTURE_MAG_FILTER 133 
#define  GL_TEXTURE_MIN_FILTER 132 
#define  GL_TEXTURE_PRIORITY 131 
#define  GL_TEXTURE_RESIDENT 130 
#define  GL_TEXTURE_WRAP_S 129 
#define  GL_TEXTURE_WRAP_T 128 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 

void FUNC2( GLcontext *ctx,
                           GLenum target, GLenum pname, GLfloat *params )
{
   switch (target) {
      case GL_TEXTURE_1D:
         switch (pname) {
	    case GL_TEXTURE_MAG_FILTER:
	       *params = FUNC0(ctx->Texture.Current1D->MagFilter);
	       break;
	    case GL_TEXTURE_MIN_FILTER:
	       *params = FUNC0(ctx->Texture.Current1D->MinFilter);
	       break;
	    case GL_TEXTURE_WRAP_S:
	       *params = FUNC0(ctx->Texture.Current1D->WrapS);
	       break;
	    case GL_TEXTURE_WRAP_T:
	       *params = FUNC0(ctx->Texture.Current1D->WrapT);
	       break;
	    case GL_TEXTURE_BORDER_COLOR:
               params[0] = ctx->Texture.Current1D->BorderColor[0] / 255.0f;
               params[1] = ctx->Texture.Current1D->BorderColor[1] / 255.0f;
               params[2] = ctx->Texture.Current1D->BorderColor[2] / 255.0f;
               params[3] = ctx->Texture.Current1D->BorderColor[3] / 255.0f;
	       break;
	    case GL_TEXTURE_RESIDENT:
               *params = FUNC0(GL_TRUE);
	       break;
            case GL_TEXTURE_PRIORITY:
               *params = ctx->Texture.Current1D->Priority;
	       break;
	    default:
	       FUNC1( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(pname)" );
	 }
         break;
      case GL_TEXTURE_2D:
         switch (pname) {
	    case GL_TEXTURE_MAG_FILTER:
	       *params = FUNC0(ctx->Texture.Current2D->MagFilter);
	       break;
	    case GL_TEXTURE_MIN_FILTER:
	       *params = FUNC0(ctx->Texture.Current2D->MinFilter);
	       break;
	    case GL_TEXTURE_WRAP_S:
	       *params = FUNC0(ctx->Texture.Current2D->WrapS);
	       break;
	    case GL_TEXTURE_WRAP_T:
	       *params = FUNC0(ctx->Texture.Current2D->WrapT);
	       break;
	    case GL_TEXTURE_BORDER_COLOR:
               params[0] = ctx->Texture.Current2D->BorderColor[0] / 255.0f;
               params[1] = ctx->Texture.Current2D->BorderColor[1] / 255.0f;
               params[2] = ctx->Texture.Current2D->BorderColor[2] / 255.0f;
               params[3] = ctx->Texture.Current2D->BorderColor[3] / 255.0f;
               break;
	    case GL_TEXTURE_RESIDENT:
               *params = FUNC0(GL_TRUE);
	       break;
	    case GL_TEXTURE_PRIORITY:
               *params = ctx->Texture.Current2D->Priority;
	       break;
	    default:
	       FUNC1( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(pname)" );
	 }
	 break;
      default:
         FUNC1( ctx, GL_INVALID_ENUM, "glGetTexParameterfv(target)" );
   }
}