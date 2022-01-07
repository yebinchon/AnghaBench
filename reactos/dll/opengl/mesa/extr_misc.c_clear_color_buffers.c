
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int (* SetBuffer ) (TYPE_5__*,int ) ;int (* Clear ) (TYPE_5__*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct TYPE_15__ {int Enabled; } ;
struct TYPE_13__ {scalar_t__ SWmasking; } ;
struct TYPE_17__ {int RasterMask; TYPE_4__ Driver; TYPE_3__ Scissor; TYPE_2__* Buffer; TYPE_1__ Color; } ;
struct TYPE_14__ {scalar_t__ Xmin; scalar_t__ Xmax; scalar_t__ Ymin; scalar_t__ Ymax; } ;
typedef scalar_t__ GLint ;
typedef TYPE_5__ GLcontext ;


 int ALPHABUF_BIT ;
 int FRONT_AND_BACK_BIT ;
 int GL_BACK ;
 int GL_FRONT ;
 int clear_color_buffer_with_masking (TYPE_5__*) ;
 int gl_clear_alpha_buffers (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stub2 (TYPE_5__*,int ) ;
 int stub3 (TYPE_5__*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stub4 (TYPE_5__*,int ) ;

__attribute__((used)) static void clear_color_buffers( GLcontext *ctx )
{
   if (ctx->Color.SWmasking) {
      clear_color_buffer_with_masking( ctx );
   }
   else {
      GLint x = ctx->Buffer->Xmin;
      GLint y = ctx->Buffer->Ymin;
      GLint height = ctx->Buffer->Ymax - ctx->Buffer->Ymin + 1;
      GLint width = ctx->Buffer->Xmax - ctx->Buffer->Xmin + 1;
      (*ctx->Driver.Clear)( ctx, !ctx->Scissor.Enabled,
                            x, y, width, height );
      if (ctx->RasterMask & ALPHABUF_BIT) {

         gl_clear_alpha_buffers( ctx );
      }
   }

   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {

      (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
      if (ctx->Color.SWmasking) {
         clear_color_buffer_with_masking( ctx );
      }
      else {
         GLint x = ctx->Buffer->Xmin;
         GLint y = ctx->Buffer->Ymin;
         GLint height = ctx->Buffer->Ymax - ctx->Buffer->Ymin + 1;
         GLint width = ctx->Buffer->Xmax - ctx->Buffer->Xmin + 1;
         (*ctx->Driver.Clear)( ctx, !ctx->Scissor.Enabled,
                               x, y, width, height );
      }
      (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
   }
}
