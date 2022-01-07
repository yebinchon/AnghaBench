
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Light; } ;
struct TYPE_8__ {TYPE_2__ Light; } ;
struct TYPE_6__ {scalar_t__* Position; scalar_t__* Direction; scalar_t__ SpotExponent; scalar_t__ SpotCutoff; scalar_t__ ConstantAttenuation; scalar_t__ LinearAttenuation; scalar_t__ QuadraticAttenuation; int * Specular; int * Diffuse; int * Ambient; } ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 scalar_t__ FLOAT_TO_INT (int ) ;



 int GL_INVALID_ENUM ;
 int GL_LIGHT0 ;







 scalar_t__ MAX_LIGHTS ;
 int gl_error (TYPE_3__*,int ,char*) ;

void gl_GetLightiv( GLcontext *ctx, GLenum light, GLenum pname, GLint *params )
{
   GLint l = (GLint) (light - GL_LIGHT0);

   if (l<0 || l>=MAX_LIGHTS) {
      gl_error( ctx, GL_INVALID_ENUM, "glGetLightiv" );
      return;
   }

   switch (pname) {
      case 137:
         params[0] = FLOAT_TO_INT(ctx->Light.Light[l].Ambient[0]);
         params[1] = FLOAT_TO_INT(ctx->Light.Light[l].Ambient[1]);
         params[2] = FLOAT_TO_INT(ctx->Light.Light[l].Ambient[2]);
         params[3] = FLOAT_TO_INT(ctx->Light.Light[l].Ambient[3]);
         break;
      case 135:
         params[0] = FLOAT_TO_INT(ctx->Light.Light[l].Diffuse[0]);
         params[1] = FLOAT_TO_INT(ctx->Light.Light[l].Diffuse[1]);
         params[2] = FLOAT_TO_INT(ctx->Light.Light[l].Diffuse[2]);
         params[3] = FLOAT_TO_INT(ctx->Light.Light[l].Diffuse[3]);
         break;
      case 131:
         params[0] = FLOAT_TO_INT(ctx->Light.Light[l].Specular[0]);
         params[1] = FLOAT_TO_INT(ctx->Light.Light[l].Specular[1]);
         params[2] = FLOAT_TO_INT(ctx->Light.Light[l].Specular[2]);
         params[3] = FLOAT_TO_INT(ctx->Light.Light[l].Specular[3]);
         break;
      case 133:
         params[0] = ctx->Light.Light[l].Position[0];
         params[1] = ctx->Light.Light[l].Position[1];
         params[2] = ctx->Light.Light[l].Position[2];
         params[3] = ctx->Light.Light[l].Position[3];
         break;
      case 129:
         params[0] = ctx->Light.Light[l].Direction[0];
         params[1] = ctx->Light.Light[l].Direction[1];
         params[2] = ctx->Light.Light[l].Direction[2];
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
         gl_error( ctx, GL_INVALID_ENUM, "glGetLightiv" );
         break;
   }
}
