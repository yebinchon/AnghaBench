#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_instruction {TYPE_4__* ctx; TYPE_3__* src; } ;
struct TYPE_10__ {int /*<<< orphan*/  in_subroutine; } ;
struct TYPE_9__ {TYPE_5__* state; int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {TYPE_1__* idx; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(const struct wined3d_shader_instruction *ins)
{
    FUNC0(ins->ctx->buffer, "}\n");
    FUNC0(ins->ctx->buffer, "void subroutine%u()\n{\n", ins->src[0].reg.idx[0].offset);

    /* Subroutines appear at the end of the shader. */
    ins->ctx->state->in_subroutine = TRUE;
}