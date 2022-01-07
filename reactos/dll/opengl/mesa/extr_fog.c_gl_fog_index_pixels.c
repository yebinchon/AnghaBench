
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Mode; double End; float Start; double Index; double Density; } ;
struct TYPE_6__ {double Tz; float Sz; } ;
struct TYPE_8__ {double* ProjectionMatrix; TYPE_2__ Fog; TYPE_1__ Viewport; } ;
typedef size_t GLuint ;
typedef double GLfloat ;
typedef int GLdepth ;
typedef TYPE_3__ GLcontext ;


 double CLAMP (double,float,float) ;



 double exp (double) ;
 int gl_problem (TYPE_3__*,char*) ;

void gl_fog_index_pixels( GLcontext *ctx,
                          GLuint n, const GLdepth z[], GLuint index[] )
{
   GLfloat c = ctx->ProjectionMatrix[10];
   GLfloat d = ctx->ProjectionMatrix[14];
   GLuint i;

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
               GLfloat f;
               if (eyez < 0.0) eyez = -eyez;
               f = (fogEnd - eyez) * fogScale;
               f = CLAMP( f, 0.0F, 1.0F );
               index[i] = (GLuint) ((GLfloat) index[i] + (1.0F-f) * ctx->Fog.Index);
            }
  }
  break;
      case 130:
         for (i=0;i<n;i++) {
     GLfloat ndcz = ((GLfloat) z[i] - tz) * szInv;
     GLfloat eyez = -d / (c+ndcz);
            GLfloat f;
     if (eyez < 0.0) eyez = -eyez;
     f = exp( -ctx->Fog.Density * eyez );
     f = CLAMP( f, 0.0F, 1.0F );
     index[i] = (GLuint) ((GLfloat) index[i] + (1.0F-f) * ctx->Fog.Index);
  }
  break;
      case 129:
         {
            GLfloat negDensitySquared = -ctx->Fog.Density * ctx->Fog.Density;
            for (i=0;i<n;i++) {
               GLfloat ndcz = ((GLfloat) z[i] - tz) * szInv;
               GLfloat eyez = -d / (c+ndcz);
               GLfloat f;
               if (eyez < 0.0) eyez = -eyez;
               f = exp( negDensitySquared * eyez*eyez );
               f = CLAMP( f, 0.0F, 1.0F );
               index[i] = (GLuint) ((GLfloat) index[i] + (1.0F-f) * ctx->Fog.Index);
            }
  }
  break;
      default:
         gl_problem(ctx, "Bad fog mode in gl_fog_index_pixels");
         return;
   }
}
