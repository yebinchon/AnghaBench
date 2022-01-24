#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* Light; } ;
struct TYPE_8__ {TYPE_2__ Light; } ;
struct TYPE_6__ {int /*<<< orphan*/  QuadraticAttenuation; int /*<<< orphan*/  LinearAttenuation; int /*<<< orphan*/  ConstantAttenuation; int /*<<< orphan*/  SpotCutoff; int /*<<< orphan*/  SpotExponent; int /*<<< orphan*/  Direction; int /*<<< orphan*/  Position; int /*<<< orphan*/  Specular; int /*<<< orphan*/  Diffuse; int /*<<< orphan*/  Ambient; } ;
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  GL_AMBIENT 137 
#define  GL_CONSTANT_ATTENUATION 136 
#define  GL_DIFFUSE 135 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int GL_LIGHT0 ; 
#define  GL_LINEAR_ATTENUATION 134 
#define  GL_POSITION 133 
#define  GL_QUADRATIC_ATTENUATION 132 
#define  GL_SPECULAR 131 
#define  GL_SPOT_CUTOFF 130 
#define  GL_SPOT_DIRECTION 129 
#define  GL_SPOT_EXPONENT 128 
 scalar_t__ MAX_LIGHTS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext *ctx,
                    GLenum light, GLenum pname, GLfloat *params )
{
   GLint l = (GLint) (light - GL_LIGHT0);

   if (l<0 || l>=MAX_LIGHTS) {
      FUNC2( ctx, GL_INVALID_ENUM, "glGetLightfv" );
      return;
   }

   switch (pname) {
      case GL_AMBIENT:
         FUNC1( params, ctx->Light.Light[l].Ambient );
         break;
      case GL_DIFFUSE:
         FUNC1( params, ctx->Light.Light[l].Diffuse );
         break;
      case GL_SPECULAR:
         FUNC1( params, ctx->Light.Light[l].Specular );
         break;
      case GL_POSITION:
         FUNC1( params, ctx->Light.Light[l].Position );
         break;
      case GL_SPOT_DIRECTION:
         FUNC0( params, ctx->Light.Light[l].Direction );
         break;
      case GL_SPOT_EXPONENT:
         params[0] = ctx->Light.Light[l].SpotExponent;
         break;
      case GL_SPOT_CUTOFF:
         params[0] = ctx->Light.Light[l].SpotCutoff;
         break;
      case GL_CONSTANT_ATTENUATION:
         params[0] = ctx->Light.Light[l].ConstantAttenuation;
         break;
      case GL_LINEAR_ATTENUATION:
         params[0] = ctx->Light.Light[l].LinearAttenuation;
         break;
      case GL_QUADRATIC_ATTENUATION:
         params[0] = ctx->Light.Light[l].QuadraticAttenuation;
         break;
      default:
         FUNC2( ctx, GL_INVALID_ENUM, "glGetLightfv" );
         break;
   }
}