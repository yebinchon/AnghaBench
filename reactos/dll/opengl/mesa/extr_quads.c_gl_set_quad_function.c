
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* QuadFunc; } ;
struct TYPE_5__ {scalar_t__ RenderMode; TYPE_1__ Driver; scalar_t__ NoRaster; } ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ GL_RENDER ;
 void* null_quad ;
 void* quad ;

void gl_set_quad_function( GLcontext *ctx )
{
   if (ctx->RenderMode==GL_RENDER) {
      if (ctx->NoRaster) {
         ctx->Driver.QuadFunc = null_quad;
      }
      else if (ctx->Driver.QuadFunc) {

      }
      else {
         ctx->Driver.QuadFunc = quad;
      }
   }
   else {

      ctx->Driver.QuadFunc = quad;
   }
}
