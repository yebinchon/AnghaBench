#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; int /*<<< orphan*/ * dst; TYPE_3__* ctx; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_shader_instruction const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_name[50];
    char src_name[3][50];

    /* ARB_fragment_program has a convenient LRP instruction */
    if(FUNC5(ins->ctx->reg_maps->shader_version.type)) {
        FUNC4(ins);
        return;
    }

    FUNC1(ins, &ins->dst[0], dst_name);
    FUNC3(ins, &ins->src[0], 0, src_name[0]);
    FUNC3(ins, &ins->src[1], 1, src_name[1]);
    FUNC3(ins, &ins->src[2], 2, src_name[2]);

    FUNC0(buffer, "SUB TA, %s, %s;\n", src_name[1], src_name[2]);
    FUNC0(buffer, "MAD%s %s, %s, TA, %s;\n", FUNC2(ins),
                   dst_name, src_name[0], src_name[2]);
}