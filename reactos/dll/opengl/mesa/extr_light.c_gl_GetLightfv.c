
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Light; } ;
struct TYPE_8__ {TYPE_2__ Light; } ;
struct TYPE_6__ {int QuadraticAttenuation; int LinearAttenuation; int ConstantAttenuation; int SpotCutoff; int SpotExponent; int Direction; int Position; int Specular; int Diffuse; int Ambient; } ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int COPY_3V (int *,int ) ;
 int COPY_4V (int *,int ) ;



 int GL_INVALID_ENUM ;
 int GL_LIGHT0 ;







 scalar_t__ MAX_LIGHTS ;
 int gl_error (TYPE_3__*,int ,char*) ;

void gl_GetLightfv( GLcontext *ctx,
                    GLenum light, GLenum pname, GLfloat *params )
{
   GLint l = (GLint) (light - GL_LIGHT0);

   if (l<0 || l>=MAX_LIGHTS) {
      gl_error( ctx, GL_INVALID_ENUM, "glGetLightfv" );
      return;
   }

   switch (pname) {
      case 137:
         COPY_4V( params, ctx->Light.Light[l].Ambient );
         break;
      case 135:
         COPY_4V( params, ctx->Light.Light[l].Diffuse );
         break;
      case 131:
         COPY_4V( params, ctx->Light.Light[l].Specular );
         break;
      case 133:
         COPY_4V( params, ctx->Light.Light[l].Position );
         break;
      case 129:
         COPY_3V( params, ctx->Light.Light[l].Direction );
         break;
      case 128:
         params[0] = ctx->Light.Light[l].SpotExponent;
         break;
      case 130:
         params[0] = ctx->Light.Light[l].SpotCutoff;
         break;
      case 136:
         params[0] = ctx->Light.Light[l].ConstantAttenuation;
         break;
      case 134:
         params[0] = ctx->Light.Light[l].LinearAttenuation;
         break;
      case 132:
         params[0] = ctx->Light.Light[l].QuadraticAttenuation;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetLightfv" );
         break;
   }
}
