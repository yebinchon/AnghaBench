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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {struct wined3d_shader_dst_param* dst; int /*<<< orphan*/ * src; TYPE_3__* ctx; } ;
struct TYPE_10__ {TYPE_4__* idx; } ;
struct wined3d_shader_dst_param {TYPE_5__ reg; } ;
struct TYPE_9__ {int /*<<< orphan*/  offset; } ;
struct TYPE_8__ {TYPE_2__* reg_maps; struct wined3d_string_buffer* buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_1__ shader_version; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_ONE ; 
 int /*<<< orphan*/  ARB_ZERO ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    const struct wined3d_shader_dst_param *dst = &ins->dst[0];
    char src0[50], dst_name[50];
    BOOL is_color;
    const char *zero = FUNC0(ins->ctx->reg_maps->shader_version.type, ARB_ZERO);
    const char *one = FUNC0(ins->ctx->reg_maps->shader_version.type, ARB_ONE);

    FUNC3(ins, &ins->src[0], 0, src0);
    FUNC2(ins, &ins->dst[0].reg, dst_name, &is_color);
    FUNC1(buffer, "DP3 %s.y, fragment.texcoord[%u], %s;\n", dst_name, dst->reg.idx[0].offset, src0);

    /* How to deal with the special case dst_name.g == 0? if r != 0, then
     * the r * (1 / 0) will give infinity, which is clamped to 1.0, the correct
     * result. But if r = 0.0, then 0 * inf = 0, which is incorrect.
     */
    FUNC1(buffer, "RCP %s.y, %s.y;\n", dst_name, dst_name);
    FUNC1(buffer, "MUL %s.x, %s.x, %s.y;\n", dst_name, dst_name, dst_name);
    FUNC1(buffer, "MIN %s.x, %s.x, %s;\n", dst_name, dst_name, one);
    FUNC1(buffer, "MAX result.depth, %s.x, %s;\n", dst_name, zero);
}