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
struct wined3d_shader_src_param {int /*<<< orphan*/  modifiers; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; struct wined3d_shader_src_param* src; int /*<<< orphan*/ * dst; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_EPS ; 
 int /*<<< orphan*/  ARB_ONE ; 
 int /*<<< orphan*/  ARB_ZERO ; 
 scalar_t__ FALSE ; 
 scalar_t__ NV2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_shader_instruction const*,struct wined3d_shader_src_param*,int,char*) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char src0[50], src1[50], dst[50];
    struct wined3d_shader_src_param src0_copy = ins->src[0];
    BOOL need_abs = FALSE;
    struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
    const char *one = FUNC1(ins->ctx->reg_maps->shader_version.type, ARB_ONE);

    /* POW operates on the absolute value of the input */
    src0_copy.modifiers = FUNC0(src0_copy.modifiers, &need_abs);

    FUNC3(ins, &ins->dst[0], dst);
    FUNC5(ins, &src0_copy, 0, src0);
    FUNC5(ins, &ins->src[1], 1, src1);

    if (need_abs)
        FUNC2(buffer, "ABS TA.x, %s;\n", src0);
    else
        FUNC2(buffer, "MOV TA.x, %s;\n", src0);

    if (priv->target_version >= NV2)
    {
        FUNC2(buffer, "MOVC TA.y, %s;\n", src1);
        FUNC2(buffer, "POW%s %s, TA.x, TA.y;\n", FUNC4(ins), dst);
        FUNC2(buffer, "MOV %s (EQ.y), %s;\n", dst, one);
    }
    else
    {
        const char *zero = FUNC1(ins->ctx->reg_maps->shader_version.type, ARB_ZERO);
        const char *flt_eps = FUNC1(ins->ctx->reg_maps->shader_version.type, ARB_EPS);

        FUNC2(buffer, "ABS TA.y, %s;\n", src1);
        FUNC2(buffer, "SGE TA.y, -TA.y, %s;\n", zero);
        /* Possibly add flt_eps to avoid getting float special values */
        FUNC2(buffer, "MAD TA.z, TA.y, %s, %s;\n", flt_eps, src1);
        FUNC2(buffer, "POW%s TA.x, TA.x, TA.z;\n", FUNC4(ins));
        FUNC2(buffer, "MAD TA.x, -TA.x, TA.y, TA.x;\n");
        FUNC2(buffer, "MAD %s, TA.y, %s, TA.x;\n", dst, one);
    }
}