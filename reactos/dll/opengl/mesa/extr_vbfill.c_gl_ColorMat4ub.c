
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ColorMaterialBitmask; int ColorMaterialEnabled; } ;
struct TYPE_8__ {float* ByteColor; } ;
struct TYPE_12__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_11__ {int MonoColor; } ;
struct TYPE_9__ {float RedScale; float GreenScale; float BlueScale; float AlphaScale; scalar_t__ EightBitColor; } ;
typedef float GLubyte ;
typedef float GLfloat ;
typedef TYPE_5__ GLcontext ;


 int ASSERT (int ) ;
 int ASSIGN_4V (float*,float,float,float,float) ;
 int GL_FALSE ;
 int gl_set_material (TYPE_5__*,int ,float*) ;

void gl_ColorMat4ub( GLcontext *ctx,
                     GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha )
{
   GLfloat color[4];
   if (ctx->Visual->EightBitColor) {
      ASSIGN_4V( ctx->Current.ByteColor, red, green, blue, alpha );
   }
   else {
      ctx->Current.ByteColor[0] = red * ctx->Visual->RedScale * (1.0F/255.0F);
      ctx->Current.ByteColor[1] = green * ctx->Visual->GreenScale * (1.0F/255.0F);
      ctx->Current.ByteColor[2] = blue * ctx->Visual->BlueScale * (1.0F/255.0F);
      ctx->Current.ByteColor[3] = alpha * ctx->Visual->AlphaScale * (1.0F/255.0F);
   }

   ASSERT( ctx->Light.ColorMaterialEnabled );
   color[0] = red * (1.0F/255.0F);
   color[1] = green * (1.0F/255.0F);
   color[2] = blue * (1.0F/255.0F);
   color[3] = alpha * (1.0F/255.0F);
   gl_set_material( ctx, ctx->Light.ColorMaterialBitmask, color );
   ctx->VB->MonoColor = GL_FALSE;
}
