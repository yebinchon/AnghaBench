#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* AllocDepthBuffer ) (TYPE_4__*) ;int /*<<< orphan*/  (* GetBufferSize ) (TYPE_4__*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_14__ {TYPE_3__* Visual; TYPE_2__ Driver; TYPE_1__* Buffer; int /*<<< orphan*/  NewState; } ;
struct TYPE_13__ {scalar_t__ DepthBits; scalar_t__ StencilBits; scalar_t__ AccumBits; scalar_t__ BackAlphaEnabled; scalar_t__ FrontAlphaEnabled; } ;
struct TYPE_11__ {scalar_t__ Width; scalar_t__ Height; } ;
typedef  scalar_t__ GLuint ;
typedef  int GLint ;
typedef  TYPE_4__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  NEW_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void FUNC5( GLcontext *ctx )
{
   GLint newsize;
   GLuint buf_width, buf_height;
   
   ctx->NewState |= NEW_ALL;   /* just to be safe */

   /* ask device driver for size of output buffer */
   (*ctx->Driver.GetBufferSize)( ctx, &buf_width, &buf_height );

   /* see if size of device driver's color buffer (window) has changed */
   newsize = ctx->Buffer->Width!=buf_width || ctx->Buffer->Height!=buf_height;

   /* save buffer size */
   ctx->Buffer->Width = buf_width;
   ctx->Buffer->Height = buf_height;

   /* Reallocate other buffers if needed. */
   if (newsize && ctx->Visual->DepthBits>0) {
      /* reallocate depth buffer */
      (*ctx->Driver.AllocDepthBuffer)( ctx );
      /*** if scissoring enabled then clearing can cause a problem ***/
      /***(*ctx->Driver.ClearDepthBuffer)( ctx );***/
   }
   if (newsize && ctx->Visual->StencilBits>0) {
      /* reallocate stencil buffer */
      FUNC2( ctx );
   }
   if (newsize && ctx->Visual->AccumBits>0) {
      /* reallocate accum buffer */
      FUNC0( ctx );
   }
   if (newsize
       && (ctx->Visual->FrontAlphaEnabled || ctx->Visual->BackAlphaEnabled)) {
      FUNC1( ctx );
   }
}