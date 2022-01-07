
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ColorMaterialEnabled; } ;
struct TYPE_6__ {int ByteColor; } ;
struct TYPE_9__ {TYPE_3__* VB; TYPE_2__ Light; TYPE_1__ Current; } ;
struct TYPE_8__ {int MonoColor; } ;
typedef int GLubyte ;
typedef TYPE_4__ GLcontext ;


 int ASSERT (int) ;
 int ASSIGN_4V (int ,int ,int ,int ,int ) ;
 int GL_FALSE ;

void gl_Color4ub8bit( GLcontext *ctx,
                      GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha )
{
   ASSIGN_4V( ctx->Current.ByteColor, red, green, blue, alpha );
   ASSERT( !ctx->Light.ColorMaterialEnabled );
   ctx->VB->MonoColor = GL_FALSE;
}
