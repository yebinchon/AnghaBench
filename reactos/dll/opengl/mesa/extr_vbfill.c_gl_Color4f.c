
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ColorMaterialEnabled; } ;
struct TYPE_7__ {void** ByteColor; } ;
struct TYPE_11__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_10__ {int MonoColor; } ;
struct TYPE_8__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; } ;
typedef int GLfloat ;
typedef TYPE_5__ GLcontext ;


 int ASSERT (int) ;
 int CLAMP (int ,float,float) ;
 void* FloatToInt (int) ;
 int GL_FALSE ;

void gl_Color4f( GLcontext *ctx,
                 GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha )
{
   ctx->Current.ByteColor[0] = FloatToInt(CLAMP(red , 0.0F, 1.0F) * ctx->Visual->RedScale);
   ctx->Current.ByteColor[1] = FloatToInt(CLAMP(green, 0.0F, 1.0F) * ctx->Visual->GreenScale);
   ctx->Current.ByteColor[2] = FloatToInt(CLAMP(blue , 0.0F, 1.0F) * ctx->Visual->BlueScale);
   ctx->Current.ByteColor[3] = FloatToInt(CLAMP(alpha, 0.0F, 1.0F) * ctx->Visual->AlphaScale);
   ASSERT( !ctx->Light.ColorMaterialEnabled );
   ctx->VB->MonoColor = GL_FALSE;
}
