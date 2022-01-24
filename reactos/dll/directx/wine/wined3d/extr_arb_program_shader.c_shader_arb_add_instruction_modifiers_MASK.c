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
struct wined3d_shader_instruction {struct wined3d_shader_dst_param* dst; int /*<<< orphan*/  dst_count; TYPE_1__* ctx; } ;
struct wined3d_shader_dst_param {size_t shift; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ; 
 int /*<<< orphan*/ * shift_tab ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins) {
    DWORD shift;
    char write_mask[20], regstr[50];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    BOOL is_color = FALSE;
    const struct wined3d_shader_dst_param *dst;

    if (!ins->dst_count) return;

    dst = &ins->dst[0];
    shift = dst->shift;
    if (!shift) return; /* Saturate alone is handled by the instructions */

    FUNC3(ins, dst, write_mask);
    FUNC2(ins, &dst->reg, regstr, &is_color);

    /* Generate a line that does the output modifier computation
     * FIXME: _SAT vs shift? _SAT alone is already handled in the instructions, if this
     * maps problems in e.g. _d4_sat modify shader_arb_get_modifier
     */
    FUNC0(buffer, "MUL%s %s%s, %s, %s;\n", FUNC1(ins),
                   regstr, write_mask, regstr, shift_tab[shift]);
}