
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RedScale; int RedBias; int GreenScale; int GreenBias; int BlueScale; int BlueBias; int AlphaScale; int AlphaBias; } ;
struct TYPE_5__ {TYPE_1__ Pixel; } ;
typedef size_t GLint ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int CLAMP (int,float,float) ;

__attribute__((used)) static void scale_and_bias_rgba( GLcontext *ctx,
                                 GLint n,
     GLfloat red[], GLfloat green[],
     GLfloat blue[], GLfloat alpha[] )
{
   register GLint i;
   register GLfloat r, g, b, a;

   for (i=0;i<n;i++) {
      r = red[i] * ctx->Pixel.RedScale + ctx->Pixel.RedBias;
      g = green[i] * ctx->Pixel.GreenScale + ctx->Pixel.GreenBias;
      b = blue[i] * ctx->Pixel.BlueScale + ctx->Pixel.BlueBias;
      a = alpha[i] * ctx->Pixel.AlphaScale + ctx->Pixel.AlphaBias;
      red[i] = CLAMP( r, 0.0F, 1.0F );
      green[i] = CLAMP( g, 0.0F, 1.0F );
      blue[i] = CLAMP( b, 0.0F, 1.0F );
      alpha[i] = CLAMP( a, 0.0F, 1.0F );
   }
}
