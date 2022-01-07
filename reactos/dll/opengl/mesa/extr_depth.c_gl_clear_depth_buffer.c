
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ Enabled; } ;
struct TYPE_8__ {int Clear; } ;
struct TYPE_12__ {TYPE_4__* Buffer; TYPE_3__ Scissor; TYPE_2__* Visual; TYPE_1__ Depth; } ;
struct TYPE_11__ {void** Depth; scalar_t__ Ymin; scalar_t__ Ymax; scalar_t__ Xmin; scalar_t__ Xmax; scalar_t__ Width; scalar_t__ Height; } ;
struct TYPE_9__ {scalar_t__ DepthBits; } ;
typedef scalar_t__ GLint ;
typedef void* GLdepth ;
typedef TYPE_5__ GLcontext ;


 int DEPTH_SCALE ;
 void** Z_ADDRESS (TYPE_5__*,scalar_t__,scalar_t__) ;

void gl_clear_depth_buffer( GLcontext* ctx )
{
   GLdepth clear_value = (GLdepth) (ctx->Depth.Clear * DEPTH_SCALE);

   if (ctx->Visual->DepthBits==0 || !ctx->Buffer->Depth) {

      return;
   }





   if (ctx->Scissor.Enabled) {

      GLint y;
      for (y=ctx->Buffer->Ymin; y<=ctx->Buffer->Ymax; y++) {
         GLdepth *d = Z_ADDRESS( ctx, ctx->Buffer->Xmin, y );
         GLint n = ctx->Buffer->Xmax - ctx->Buffer->Xmin + 1;
         do {
            *d++ = clear_value;
            n--;
         } while (n);
      }
   }
   else {

      GLdepth *d = ctx->Buffer->Depth;
      GLint n = ctx->Buffer->Width * ctx->Buffer->Height;
      while (n>=16) {
         d[0] = clear_value; d[1] = clear_value;
         d[2] = clear_value; d[3] = clear_value;
         d[4] = clear_value; d[5] = clear_value;
         d[6] = clear_value; d[7] = clear_value;
         d[8] = clear_value; d[9] = clear_value;
         d[10] = clear_value; d[11] = clear_value;
         d[12] = clear_value; d[13] = clear_value;
         d[14] = clear_value; d[15] = clear_value;
         d += 16;
         n -= 16;
      }
      while (n>0) {
         *d++ = clear_value;
         n--;
      }
   }
}
