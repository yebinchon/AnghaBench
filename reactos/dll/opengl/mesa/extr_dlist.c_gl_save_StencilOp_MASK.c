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
struct TYPE_8__ {int /*<<< orphan*/  (* StencilOp ) (TYPE_3__*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* e; } ;
typedef  TYPE_2__ Node ;
typedef  void* GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_STENCIL_OP ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,void*,void*,void*) ; 

void FUNC2( GLcontext *ctx,
                        GLenum fail, GLenum zfail, GLenum zpass )
{
   Node *n = FUNC0( ctx, OPCODE_STENCIL_OP, 3 );
   if (n) {
      n[1].e = fail;
      n[2].e = zfail;
      n[3].e = zpass;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.StencilOp)( ctx, fail, zfail, zpass );
   }
}