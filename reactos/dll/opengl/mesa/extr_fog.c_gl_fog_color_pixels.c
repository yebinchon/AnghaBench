
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {double* Color; int Mode; double End; float Start; double Density; } ;
struct TYPE_8__ {double Tz; float Sz; } ;
struct TYPE_10__ {double* ProjectionMatrix; TYPE_3__ Fog; TYPE_2__ Viewport; TYPE_1__* Visual; } ;
struct TYPE_7__ {double RedScale; double GreenScale; double BlueScale; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef double GLfloat ;
typedef int GLdepth ;
typedef TYPE_4__ GLcontext ;


 double CLAMP (double,float,float) ;



 double exp (double) ;
 int gl_problem (TYPE_4__*,char*) ;

void gl_fog_color_pixels( GLcontext *ctx,
                          GLuint n, const GLdepth z[], GLubyte red[],
     GLubyte green[], GLubyte blue[], GLubyte alpha[] )
{
   GLfloat c = ctx->ProjectionMatrix[10];
   GLfloat d = ctx->ProjectionMatrix[14];
   GLuint i;

   GLfloat fog_red = ctx->Fog.Color[0] * ctx->Visual->RedScale;
   GLfloat fog_green = ctx->Fog.Color[1] * ctx->Visual->GreenScale;
   GLfloat fog_blue = ctx->Fog.Color[2] * ctx->Visual->BlueScale;

   GLfloat tz = ctx->Viewport.Tz;
   GLfloat szInv = 1.0F / ctx->Viewport.Sz;

   switch (ctx->Fog.Mode) {
      case 128:
         {
            GLfloat fogEnd = ctx->Fog.End;
            GLfloat fogScale = 1.0F / (ctx->Fog.End - ctx->Fog.Start);
            for (i=0;i<n;i++) {
               GLfloat ndcz = ((GLfloat) z[i] - tz) * szInv;
               GLfloat eyez = -d / (c+ndcz);
               GLfloat f, g;
               if (eyez < 0.0) eyez = -eyez;
               f = (fogEnd - eyez) * fogScale;
               f = CLAMP( f, 0.0F, 1.0F );
               g = 1.0F - f;
               red[i] = (GLint) (f * (GLfloat) red[i] + g * fog_red);
               green[i] = (GLint) (f * (GLfloat) green[i] + g * fog_green);
               blue[i] = (GLint) (f * (GLfloat) blue[i] + g * fog_blue);
            }
         }
  break;
      case 130:
  for (i=0;i<n;i++) {
     GLfloat ndcz = ((GLfloat) z[i] - tz) * szInv;
     GLfloat eyez = -d / (c+ndcz);
            GLfloat f, g;
     if (eyez < 0.0) eyez = -eyez;
     f = exp( -ctx->Fog.Density * eyez );
     f = CLAMP( f, 0.0F, 1.0F );
            g = 1.0F - f;
            red[i] = (GLint) (f * (GLfloat) red[i] + g * fog_red);
            green[i] = (GLint) (f * (GLfloat) green[i] + g * fog_green);
            blue[i] = (GLint) (f * (GLfloat) blue[i] + g * fog_blue);
  }
  break;
      case 129:
         {
            GLfloat negDensitySquared = -ctx->Fog.Density * ctx->Fog.Density;
            for (i=0;i<n;i++) {
               GLfloat ndcz = ((GLfloat) z[i] - tz) * szInv;
               GLfloat eyez = -d / (c+ndcz);
               GLfloat f, g;
               if (eyez < 0.0) eyez = -eyez;
               f = exp( negDensitySquared * eyez*eyez );
               f = CLAMP( f, 0.0F, 1.0F );
               g = 1.0F - f;
               red[i] = (GLint) (f * (GLfloat) red[i] + g * fog_red);
               green[i] = (GLint) (f * (GLfloat) green[i] + g * fog_green);
               blue[i] = (GLint) (f * (GLfloat) blue[i] + g * fog_blue);
            }
         }
  break;
      default:
         gl_problem(ctx, "Bad fog mode in gl_fog_color_pixels");
         return;
   }
}
