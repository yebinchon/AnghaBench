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
struct TYPE_8__ {int /*<<< orphan*/  (* EvalMesh1 ) (TYPE_3__*,int /*<<< orphan*/ ,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* i; int /*<<< orphan*/  e; } ;
typedef  TYPE_2__ Node ;
typedef  void* GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_EVALMESH1 ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,void*,void*) ; 

void FUNC2( GLcontext *ctx,
                        GLenum mode, GLint i1, GLint i2 )
{
   Node *n = FUNC0( ctx, OPCODE_EVALMESH1, 3 );
   if (n) {
      n[1].e = mode;
      n[2].i = i1;
      n[3].i = i2;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.EvalMesh1)( ctx, mode, i1, i2 );
   }
}