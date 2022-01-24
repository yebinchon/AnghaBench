#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vertex_buffer {scalar_t__ Count; scalar_t__ Start; } ;
struct pixel_buffer {scalar_t__ count; scalar_t__ primitive; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* End ) (TYPE_2__*) ;} ;
struct TYPE_9__ {scalar_t__ Primitive; int /*<<< orphan*/  BeginEndCount; int /*<<< orphan*/  BeginEndTime; TYPE_1__ Driver; struct vertex_buffer* VB; struct pixel_buffer* PB; } ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 scalar_t__ GL_BITMAP ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_TRUE ; 
 scalar_t__ begin_time ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5( GLcontext *ctx )
{
   struct pixel_buffer *PB = ctx->PB;
   struct vertex_buffer *VB = ctx->VB;

   if (ctx->Primitive==GL_BITMAP) {
      /* glEnd without glBegin */
      FUNC0( ctx, GL_INVALID_OPERATION, "glEnd" );
      return;
   }

   if (VB->Count > VB->Start) {
      FUNC3( ctx, GL_TRUE );
   }
   if (PB->count>0) {
      FUNC1(ctx);
   }

   if (ctx->Driver.End) {
      (*ctx->Driver.End)(ctx);
   }

   PB->primitive = ctx->Primitive = GL_BITMAP;  /* Default mode */

#ifdef PROFILE
   ctx->BeginEndTime += gl_time() - begin_time;
   ctx->BeginEndCount++;
#endif
}