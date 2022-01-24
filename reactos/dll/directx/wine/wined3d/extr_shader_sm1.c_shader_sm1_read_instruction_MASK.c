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
struct wined3d_sm1_opcode_info {scalar_t__ handler_idx; unsigned int dst_count; unsigned int param_count; } ;
struct wined3d_sm1_data {int /*<<< orphan*/ * src_rel_addr; int /*<<< orphan*/ * src_param; int /*<<< orphan*/  pred_rel_addr; int /*<<< orphan*/  pred_param; int /*<<< orphan*/  dst_rel_addr; int /*<<< orphan*/  dst_param; } ;
struct TYPE_2__ {int /*<<< orphan*/  semantic; } ;
struct wined3d_shader_instruction {scalar_t__ handler_idx; int flags; int coissue; int dst_count; unsigned int src_count; int /*<<< orphan*/ * predicate; TYPE_1__ declaration; int /*<<< orphan*/  texel_offset; int /*<<< orphan*/ * src; int /*<<< orphan*/ * dst; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ WINED3DSIH_DCL ; 
 scalar_t__ WINED3DSIH_DEF ; 
 scalar_t__ WINED3DSIH_DEFB ; 
 scalar_t__ WINED3DSIH_DEFI ; 
 scalar_t__ WINED3DSIH_TABLE_SIZE ; 
 int /*<<< orphan*/  WINED3D_DATA_FLOAT ; 
 int /*<<< orphan*/  WINED3D_DATA_INT ; 
 int /*<<< orphan*/  WINED3D_DATA_UINT ; 
 int /*<<< orphan*/  WINED3D_IMMCONST_SCALAR ; 
 int /*<<< orphan*/  WINED3D_IMMCONST_VEC4 ; 
 int WINED3D_SM1_COISSUE ; 
 int WINED3D_SM1_INSTRUCTION_FLAGS_MASK ; 
 int WINED3D_SM1_INSTRUCTION_FLAGS_SHIFT ; 
 int WINED3D_SM1_INSTRUCTION_PREDICATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct wined3d_sm1_opcode_info* FUNC2 (struct wined3d_sm1_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_sm1_data*,struct wined3d_sm1_opcode_info const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_sm1_data*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int const**) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_sm1_data*,int const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_sm1_data*,int const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_shader_instruction*) ; 

__attribute__((used)) static void FUNC11(void *data, const DWORD **ptr, struct wined3d_shader_instruction *ins)
{
    const struct wined3d_sm1_opcode_info *opcode_info;
    struct wined3d_sm1_data *priv = data;
    DWORD opcode_token;
    unsigned int i;
    const DWORD *p;

    FUNC5(ptr);

    opcode_token = *(*ptr)++;
    if (!(opcode_info = FUNC2(priv, opcode_token)))
    {
        FUNC0("Unrecognized opcode: token=0x%08x.\n", opcode_token);
        ins->handler_idx = WINED3DSIH_TABLE_SIZE;
        *ptr += FUNC4(priv, *ptr);
        return;
    }

    ins->handler_idx = opcode_info->handler_idx;
    ins->flags = (opcode_token & WINED3D_SM1_INSTRUCTION_FLAGS_MASK) >> WINED3D_SM1_INSTRUCTION_FLAGS_SHIFT;
    ins->coissue = opcode_token & WINED3D_SM1_COISSUE;
    ins->predicate = opcode_token & WINED3D_SM1_INSTRUCTION_PREDICATED ? &priv->pred_param : NULL;
    ins->dst_count = opcode_info->dst_count ? 1 : 0;
    ins->dst = &priv->dst_param;
    ins->src_count = opcode_info->param_count - opcode_info->dst_count;
    ins->src = priv->src_param;
    FUNC1(&ins->texel_offset, 0, sizeof(ins->texel_offset));

    p = *ptr;
    *ptr += FUNC3(priv, opcode_info, opcode_token);

    if (ins->handler_idx == WINED3DSIH_DCL)
    {
        FUNC8(&p, &ins->declaration.semantic);
    }
    else if (ins->handler_idx == WINED3DSIH_DEF)
    {
        FUNC6(priv, &p, &priv->dst_param, &priv->dst_rel_addr);
        FUNC7(&p, &priv->src_param[0], WINED3D_IMMCONST_VEC4, WINED3D_DATA_FLOAT);
    }
    else if (ins->handler_idx == WINED3DSIH_DEFB)
    {
        FUNC6(priv, &p, &priv->dst_param, &priv->dst_rel_addr);
        FUNC7(&p, &priv->src_param[0], WINED3D_IMMCONST_SCALAR, WINED3D_DATA_UINT);
    }
    else if (ins->handler_idx == WINED3DSIH_DEFI)
    {
        FUNC6(priv, &p, &priv->dst_param, &priv->dst_rel_addr);
        FUNC7(&p, &priv->src_param[0], WINED3D_IMMCONST_VEC4, WINED3D_DATA_INT);
    }
    else
    {
        /* Destination token */
        if (ins->dst_count)
            FUNC6(priv, &p, &priv->dst_param, &priv->dst_rel_addr);

        /* Predication token */
        if (ins->predicate)
            FUNC9(priv, &p, &priv->pred_param, &priv->pred_rel_addr);

        /* Other source tokens */
        for (i = 0; i < ins->src_count; ++i)
            FUNC9(priv, &p, &priv->src_param[i], &priv->src_rel_addr[i]);
    }

    FUNC10(ins);
}