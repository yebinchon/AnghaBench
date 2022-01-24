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
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; int /*<<< orphan*/  flags; TYPE_3__* ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;
struct control_frame {TYPE_4__ no; } ;
struct TYPE_7__ {int /*<<< orphan*/  backend_data; TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__ shader_version; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 struct control_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    BOOL vshader = FUNC4(ins->ctx->reg_maps->shader_version.type);
    const struct control_frame *control_frame = FUNC0(ins->ctx->backend_data);
    char src_name0[50];
    char src_name1[50];
    const char *comp = FUNC1(ins->flags);

    FUNC3(ins, &ins->src[0], 0, src_name0);
    FUNC3(ins, &ins->src[1], 1, src_name1);

    if(vshader)
    {
        /* SUBC CC, src0, src1" works only in pixel shaders, so use TA to throw
         * away the subtraction result
         */
        FUNC2(buffer, "SUBC TA, %s, %s;\n", src_name0, src_name1);
        FUNC2(buffer, "BRA loop_%u_end (%s.x);\n", control_frame->no.loop, comp);
    }
    else
    {
        FUNC2(buffer, "SUBC TA, %s, %s;\n", src_name0, src_name1);
        FUNC2(buffer, "BRK (%s.x);\n", comp);
    }
}