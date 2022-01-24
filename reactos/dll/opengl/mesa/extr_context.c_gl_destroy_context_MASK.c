#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ RefCount; } ;
struct TYPE_8__ {int /*<<< orphan*/  Proxy2D; int /*<<< orphan*/  Proxy1D; } ;
struct TYPE_9__ {void* PB; void* VB; TYPE_1__ Texture; TYPE_6__* Shared; } ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 TYPE_2__* CC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_6__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6( GLcontext *ctx )
{
   if (ctx) {

#ifdef PROFILE
      if (getenv("MESA_PROFILE")) {
         print_timings( ctx );
      }
#endif

      FUNC1( ctx->PB );
      FUNC1( ctx->VB );

      ctx->Shared->RefCount--;
      FUNC0(ctx->Shared->RefCount>=0);
      if (ctx->Shared->RefCount==0) {
	 /* free shared state */
	 FUNC2( ctx, ctx->Shared );
      }

      /* Free proxy texture objects */
      FUNC4( NULL, ctx->Texture.Proxy1D );
      FUNC4( NULL, ctx->Texture.Proxy2D );

      FUNC1( (void *) ctx );

#ifndef THREADS
      if (ctx==CC) {
         CC = NULL;
      }
#endif

   }
}