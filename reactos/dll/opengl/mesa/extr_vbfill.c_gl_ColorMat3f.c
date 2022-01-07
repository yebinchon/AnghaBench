
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
struct TYPE_8__ {void** ByteColor; } ;
struct TYPE_12__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_11__ {int MonoColor; } ;
struct TYPE_9__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; } ;
typedef int GLfloat ;
typedef TYPE_5__ GLcontext ;


 int ASSERT (int ) ;
 int ASSIGN_4V (int *,int ,int ,int ,float) ;
 int CLAMP (int ,float,float) ;
 void* FloatToInt (int) ;
 int GL_FALSE ;
 int gl_set_material (TYPE_5__*,int ,int *) ;

void gl_ColorMat3f( GLcontext *ctx, GLfloat red, GLfloat green, GLfloat blue )
{
   GLfloat color[4];
   ctx->Current.ByteColor[0] = FloatToInt(CLAMP(red , 0.0F, 1.0F) * ctx->Visual->RedScale);
   ctx->Current.ByteColor[1] = FloatToInt(CLAMP(green, 0.0F, 1.0F) * ctx->Visual->GreenScale);
   ctx->Current.ByteColor[2] = FloatToInt(CLAMP(blue , 0.0F, 1.0F) * ctx->Visual->BlueScale);
   ctx->Current.ByteColor[3] = FloatToInt(ctx->Visual->AlphaScale);

   ASSERT( ctx->Light.ColorMaterialEnabled );
   ASSIGN_4V( color, red, green, blue, 1.0F );
   gl_set_material( ctx, ctx->Light.ColorMaterialBitmask, color );
   ctx->VB->MonoColor = GL_FALSE;
}
