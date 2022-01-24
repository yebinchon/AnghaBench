#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* Buffer; } ;
struct TYPE_5__ {int Width; int Height; int /*<<< orphan*/ * Accum; } ;
typedef  int GLint ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLaccum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3( GLcontext *ctx )
{
   GLint n;

   if (ctx->Buffer->Accum) {
      FUNC0( ctx->Buffer->Accum );
      ctx->Buffer->Accum = NULL;
   }

   /* allocate accumulation buffer if not already present */
   n = ctx->Buffer->Width * ctx->Buffer->Height * 4 * sizeof(GLaccum);
   ctx->Buffer->Accum = (GLaccum *) FUNC2( n );
   if (!ctx->Buffer->Accum) {
      /* unable to setup accumulation buffer */
      FUNC1( ctx, GL_OUT_OF_MEMORY, "glAccum" );
   }
}