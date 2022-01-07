
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Clear; } ;
struct TYPE_8__ {scalar_t__ Enabled; } ;
struct TYPE_11__ {TYPE_4__* Buffer; TYPE_3__ Stencil; TYPE_2__ Scissor; TYPE_1__* Visual; } ;
struct TYPE_10__ {scalar_t__ Xmax; scalar_t__ Xmin; scalar_t__ Ymin; scalar_t__ Ymax; int Width; int Height; int * Stencil; } ;
struct TYPE_7__ {scalar_t__ StencilBits; } ;
typedef int GLstencil ;
typedef scalar_t__ GLint ;
typedef TYPE_5__ GLcontext ;


 int MEMSET (int *,int ,int) ;
 int * STENCIL_ADDRESS (scalar_t__,scalar_t__) ;

void gl_clear_stencil_buffer( GLcontext *ctx )
{
   if (ctx->Visual->StencilBits==0 || !ctx->Buffer->Stencil) {

      return;
   }

   if (ctx->Scissor.Enabled) {

      GLint y;
      GLint width = ctx->Buffer->Xmax - ctx->Buffer->Xmin + 1;
      for (y=ctx->Buffer->Ymin; y<=ctx->Buffer->Ymax; y++) {
         GLstencil *ptr = STENCIL_ADDRESS( ctx->Buffer->Xmin, y );
         MEMSET( ptr, ctx->Stencil.Clear, width * sizeof(GLstencil) );
      }
   }
   else {

      MEMSET( ctx->Buffer->Stencil, ctx->Stencil.Clear,
              ctx->Buffer->Width * ctx->Buffer->Height * sizeof(GLstencil) );
   }
}
