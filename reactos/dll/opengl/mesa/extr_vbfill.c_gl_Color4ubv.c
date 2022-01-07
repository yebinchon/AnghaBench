
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
struct TYPE_7__ {float* ByteColor; } ;
struct TYPE_11__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_10__ {int MonoColor; } ;
struct TYPE_8__ {float const RedScale; float const GreenScale; float const BlueScale; float const AlphaScale; } ;
typedef float GLubyte ;
typedef TYPE_5__ GLcontext ;


 int ASSERT (int) ;
 int GL_FALSE ;

void gl_Color4ubv( GLcontext *ctx, const GLubyte *c )
{
   ctx->Current.ByteColor[0] = c[0] * ctx->Visual->RedScale * (1.0F/255.0F);
   ctx->Current.ByteColor[1] = c[1] * ctx->Visual->GreenScale * (1.0F/255.0F);
   ctx->Current.ByteColor[2] = c[2] * ctx->Visual->BlueScale * (1.0F/255.0F);
   ctx->Current.ByteColor[3] = c[3] * ctx->Visual->AlphaScale * (1.0F/255.0F);
   ASSERT( !ctx->Light.ColorMaterialEnabled );
   ctx->VB->MonoColor = GL_FALSE;
}
