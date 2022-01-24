#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; TYPE_1__* ctx; struct wined3d_shader_dst_param* dst; } ;
struct wined3d_shader_dst_param {int dummy; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char dst_name[50];
    char src_name[3][50];

    FUNC1(ins, dst, dst_name);

    /* Generate input register names (with modifiers) */
    FUNC3(ins, &ins->src[0], 0, src_name[0]);
    FUNC3(ins, &ins->src[1], 1, src_name[1]);
    FUNC3(ins, &ins->src[2], 2, src_name[2]);

    FUNC0(buffer, "CMP%s %s, %s, %s, %s;\n", FUNC2(ins),
            dst_name, src_name[0], src_name[2], src_name[1]);
}