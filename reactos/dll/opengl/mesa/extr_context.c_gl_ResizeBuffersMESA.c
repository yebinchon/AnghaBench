
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int (* AllocDepthBuffer ) (TYPE_4__*) ;int (* GetBufferSize ) (TYPE_4__*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_14__ {TYPE_3__* Visual; TYPE_2__ Driver; TYPE_1__* Buffer; int NewState; } ;
struct TYPE_13__ {scalar_t__ DepthBits; scalar_t__ StencilBits; scalar_t__ AccumBits; scalar_t__ BackAlphaEnabled; scalar_t__ FrontAlphaEnabled; } ;
struct TYPE_11__ {scalar_t__ Width; scalar_t__ Height; } ;
typedef scalar_t__ GLuint ;
typedef int GLint ;
typedef TYPE_4__ GLcontext ;


 int NEW_ALL ;
 int gl_alloc_accum_buffer (TYPE_4__*) ;
 int gl_alloc_alpha_buffers (TYPE_4__*) ;
 int gl_alloc_stencil_buffer (TYPE_4__*) ;
 int stub1 (TYPE_4__*,scalar_t__*,scalar_t__*) ;
 int stub2 (TYPE_4__*) ;

void gl_ResizeBuffersMESA( GLcontext *ctx )
{
   GLint newsize;
   GLuint buf_width, buf_height;

   ctx->NewState |= NEW_ALL;


   (*ctx->Driver.GetBufferSize)( ctx, &buf_width, &buf_height );


   newsize = ctx->Buffer->Width!=buf_width || ctx->Buffer->Height!=buf_height;


   ctx->Buffer->Width = buf_width;
   ctx->Buffer->Height = buf_height;


   if (newsize && ctx->Visual->DepthBits>0) {

      (*ctx->Driver.AllocDepthBuffer)( ctx );


   }
   if (newsize && ctx->Visual->StencilBits>0) {

      gl_alloc_stencil_buffer( ctx );
   }
   if (newsize && ctx->Visual->AccumBits>0) {

      gl_alloc_accum_buffer( ctx );
   }
   if (newsize
       && (ctx->Visual->FrontAlphaEnabled || ctx->Visual->BackAlphaEnabled)) {
      gl_alloc_alpha_buffers( ctx );
   }
}
