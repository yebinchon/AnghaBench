
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* TwoSide; void* LocalViewer; int Ambient; } ;
struct TYPE_7__ {TYPE_1__ Model; } ;
struct TYPE_8__ {int NewState; TYPE_2__ Light; } ;
typedef double GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int COPY_4V (int ,double const*) ;
 void* GL_FALSE ;
 int GL_INVALID_ENUM ;



 void* GL_TRUE ;
 int NEW_LIGHTING ;
 int gl_error (TYPE_3__*,int ,char*) ;

void gl_LightModelfv( GLcontext *ctx, GLenum pname, const GLfloat *params )
{
   switch (pname) {
      case 130:
         COPY_4V( ctx->Light.Model.Ambient, params );
         break;
      case 129:
         if (params[0]==0.0)
            ctx->Light.Model.LocalViewer = GL_FALSE;
         else
            ctx->Light.Model.LocalViewer = GL_TRUE;
         break;
      case 128:
         if (params[0]==0.0)
            ctx->Light.Model.TwoSide = GL_FALSE;
         else
            ctx->Light.Model.TwoSide = GL_TRUE;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glLightModel" );
         break;
   }
   ctx->NewState |= NEW_LIGHTING;
}
