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
struct TYPE_8__ {int /*<<< orphan*/  (* LightModelfv ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int /*<<< orphan*/  f; int /*<<< orphan*/  e; } ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_LIGHT_MODEL ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

void FUNC2( GLcontext *ctx,
                           GLenum pname, const GLfloat *params )
{
   Node *n = FUNC0( ctx, OPCODE_LIGHT_MODEL, 5 );
   if (n) {
      n[1].e = pname;
      n[2].f = params[0];
      n[3].f = params[1];
      n[4].f = params[2];
      n[5].f = params[3];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.LightModelfv)( ctx, pname, params );
   }
}