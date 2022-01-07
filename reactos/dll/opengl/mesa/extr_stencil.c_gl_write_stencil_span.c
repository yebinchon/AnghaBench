
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Buffer; } ;
struct TYPE_4__ {scalar_t__ Stencil; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLstencil ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;


 int MEMCPY (int *,int const*,int) ;
 int * STENCIL_ADDRESS (int ,int ) ;

void gl_write_stencil_span( GLcontext *ctx,
                            GLuint n, GLint x, GLint y,
       const GLubyte stencil[] )
{
   GLstencil *s;

   if (ctx->Buffer->Stencil) {
      s = STENCIL_ADDRESS( x, y );
      MEMCPY( s, stencil, n * sizeof(GLubyte) );
   }
}
