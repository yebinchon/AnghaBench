#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* PolygonStipple ) (TYPE_3__*,int /*<<< orphan*/  const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* data; } ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  OPCODE_POLYGON_STIPPLE ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*) ; 

void FUNC4( GLcontext *ctx, const GLubyte *mask )
{
   Node *n = FUNC1( ctx, OPCODE_POLYGON_STIPPLE, 1 );
   if (n) {
      void *data;
      n[1].data = FUNC2( 32 * 4 );
      data = n[1].data;   /* This needed for Acorn compiler */
      FUNC0( data, mask, 32 * 4 );
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.PolygonStipple)( ctx, mask );
   }
}