#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;
struct control_frame {TYPE_4__ no; } ;
struct TYPE_7__ {TYPE_2__* reg_maps; int /*<<< orphan*/  backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__ shader_version; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 struct control_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    const struct control_frame *control_frame = FUNC0(ins->ctx->backend_data);
    BOOL vshader = FUNC2(ins->ctx->reg_maps->shader_version.type);

    if(vshader)
    {
        FUNC1(buffer, "BRA loop_%u_end;\n", control_frame->no.loop);
    }
    else
    {
        FUNC1(buffer, "BRK;\n");
    }
}