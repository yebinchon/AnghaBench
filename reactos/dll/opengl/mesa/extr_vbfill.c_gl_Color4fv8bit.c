
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ColorMaterialEnabled; } ;
struct TYPE_8__ {int * ByteColor; } ;
struct TYPE_9__ {TYPE_2__* VB; TYPE_1__ Light; TYPE_3__ Current; } ;
struct TYPE_7__ {int MonoColor; } ;
typedef int GLfloat ;
typedef TYPE_4__ GLcontext ;


 int ASSERT (int) ;
 int FLOAT_COLOR_TO_UBYTE_COLOR (int ,int const) ;
 int GL_FALSE ;

void gl_Color4fv8bit( GLcontext *ctx, const GLfloat *c )
{
   FLOAT_COLOR_TO_UBYTE_COLOR(ctx->Current.ByteColor[0], c[0]);
   FLOAT_COLOR_TO_UBYTE_COLOR(ctx->Current.ByteColor[1], c[1]);
   FLOAT_COLOR_TO_UBYTE_COLOR(ctx->Current.ByteColor[2], c[2]);
   FLOAT_COLOR_TO_UBYTE_COLOR(ctx->Current.ByteColor[3], c[3]);
   ASSERT( !ctx->Light.ColorMaterialEnabled );
   ctx->VB->MonoColor = GL_FALSE;
}
