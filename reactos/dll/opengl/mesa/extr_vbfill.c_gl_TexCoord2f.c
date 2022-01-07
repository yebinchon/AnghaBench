
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** TexCoord; } ;
struct TYPE_5__ {TYPE_1__ Current; } ;
typedef void* GLfloat ;
typedef TYPE_2__ GLcontext ;



void gl_TexCoord2f( GLcontext *ctx, GLfloat s, GLfloat t )
{
   ctx->Current.TexCoord[0] = s;
   ctx->Current.TexCoord[1] = t;
}
