#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_sm4_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  immconst_data; } ;
struct wined3d_shader_register {unsigned int type; int data_type; TYPE_1__ u; int /*<<< orphan*/  immconst_type; TYPE_2__* idx; } ;
typedef  enum wined3d_sm4_register_type { ____Placeholder_wined3d_sm4_register_type } wined3d_sm4_register_type ;
typedef  enum wined3d_sm4_immconst_type { ____Placeholder_wined3d_sm4_immconst_type } wined3d_sm4_immconst_type ;
typedef  enum wined3d_shader_src_modifier { ____Placeholder_wined3d_shader_src_modifier } wined3d_shader_src_modifier ;
typedef  enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_4__ {unsigned int offset; } ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int const*,int const*) ; 
 unsigned int WINED3DSPR_TEMP ; 
 int WINED3DSPSM_ABS ; 
 int WINED3DSPSM_ABSNEG ; 
 int WINED3DSPSM_NEG ; 
 int WINED3DSPSM_NONE ; 
 int /*<<< orphan*/  WINED3D_IMMCONST_SCALAR ; 
 int /*<<< orphan*/  WINED3D_IMMCONST_VEC4 ; 
 int WINED3D_SM4_ADDRESSING_MASK0 ; 
 int WINED3D_SM4_ADDRESSING_MASK1 ; 
 int WINED3D_SM4_ADDRESSING_SHIFT0 ; 
 int WINED3D_SM4_ADDRESSING_SHIFT1 ; 
#define  WINED3D_SM4_IMMCONST_SCALAR 129 
 int WINED3D_SM4_IMMCONST_TYPE_MASK ; 
 int WINED3D_SM4_IMMCONST_TYPE_SHIFT ; 
#define  WINED3D_SM4_IMMCONST_VEC4 128 
 int WINED3D_SM4_REGISTER_MODIFIER ; 
 int WINED3D_SM4_REGISTER_ORDER_MASK ; 
 int WINED3D_SM4_REGISTER_ORDER_SHIFT ; 
 int WINED3D_SM4_REGISTER_TYPE_MASK ; 
 int WINED3D_SM4_REGISTER_TYPE_SHIFT ; 
 int WINED3D_SM4_RT_IMMCONST ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_sm4_data*,struct wined3d_shader_register*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int const*,int) ; 
 unsigned int* register_type_table ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_sm4_data*,int const**,int const*,int,TYPE_2__*) ; 

__attribute__((used)) static BOOL FUNC7(struct wined3d_sm4_data *priv, const DWORD **ptr, const DWORD *end,
        enum wined3d_data_type data_type, struct wined3d_shader_register *param,
        enum wined3d_shader_src_modifier *modifier)
{
    enum wined3d_sm4_register_type register_type;
    DWORD token, order;

    if (*ptr >= end)
    {
        FUNC3("Invalid ptr %p >= end %p.\n", *ptr, end);
        return FALSE;
    }
    token = *(*ptr)++;

    register_type = (token & WINED3D_SM4_REGISTER_TYPE_MASK) >> WINED3D_SM4_REGISTER_TYPE_SHIFT;
    if (register_type >= FUNC0(register_type_table)
            || register_type_table[register_type] == ~0u)
    {
        FUNC2("Unhandled register type %#x.\n", register_type);
        param->type = WINED3DSPR_TEMP;
    }
    else
    {
        param->type = register_type_table[register_type];
    }
    param->data_type = data_type;

    if (token & WINED3D_SM4_REGISTER_MODIFIER)
    {
        DWORD m;

        if (*ptr >= end)
        {
            FUNC3("Invalid ptr %p >= end %p.\n", *ptr, end);
            return FALSE;
        }
        m = *(*ptr)++;

        switch (m)
        {
            case 0x41:
                *modifier = WINED3DSPSM_NEG;
                break;

            case 0x81:
                *modifier = WINED3DSPSM_ABS;
                break;

            case 0xc1:
                *modifier = WINED3DSPSM_ABSNEG;
                break;

            default:
                FUNC2("Skipping modifier 0x%08x.\n", m);
                *modifier = WINED3DSPSM_NONE;
                break;
        }
    }
    else
    {
        *modifier = WINED3DSPSM_NONE;
    }

    order = (token & WINED3D_SM4_REGISTER_ORDER_MASK) >> WINED3D_SM4_REGISTER_ORDER_SHIFT;

    if (order < 1)
        param->idx[0].offset = ~0U;
    else
    {
        DWORD addressing = (token & WINED3D_SM4_ADDRESSING_MASK0) >> WINED3D_SM4_ADDRESSING_SHIFT0;
        if (!(FUNC6(priv, ptr, end, addressing, &param->idx[0])))
        {
            FUNC1("Failed to read register index.\n");
            return FALSE;
        }
    }

    if (order < 2)
        param->idx[1].offset = ~0U;
    else
    {
        DWORD addressing = (token & WINED3D_SM4_ADDRESSING_MASK1) >> WINED3D_SM4_ADDRESSING_SHIFT1;
        if (!(FUNC6(priv, ptr, end, addressing, &param->idx[1])))
        {
            FUNC1("Failed to read register index.\n");
            return FALSE;
        }
    }

    if (order > 2)
        FUNC2("Unhandled order %u.\n", order);

    if (register_type == WINED3D_SM4_RT_IMMCONST)
    {
        enum wined3d_sm4_immconst_type immconst_type =
                (token & WINED3D_SM4_IMMCONST_TYPE_MASK) >> WINED3D_SM4_IMMCONST_TYPE_SHIFT;

        switch (immconst_type)
        {
            case WINED3D_SM4_IMMCONST_SCALAR:
                param->immconst_type = WINED3D_IMMCONST_SCALAR;
                if (end - *ptr < 1)
                {
                    FUNC3("Invalid ptr %p, end %p.\n", *ptr, end);
                    return FALSE;
                }
                FUNC5(param->u.immconst_data, *ptr, 1 * sizeof(DWORD));
                *ptr += 1;
                break;

            case WINED3D_SM4_IMMCONST_VEC4:
                param->immconst_type = WINED3D_IMMCONST_VEC4;
                if (end - *ptr < 4)
                {
                    FUNC3("Invalid ptr %p, end %p.\n", *ptr, end);
                    return FALSE;
                }
                FUNC5(param->u.immconst_data, *ptr, 4 * sizeof(DWORD));
                *ptr += 4;
                break;

            default:
                FUNC2("Unhandled immediate constant type %#x.\n", immconst_type);
                break;
        }
    }

    FUNC4(priv, param);

    return TRUE;
}