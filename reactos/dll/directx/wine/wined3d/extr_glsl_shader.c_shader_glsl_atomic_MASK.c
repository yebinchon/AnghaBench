#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct wined3d_shader_version {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {unsigned int tgsm_count; TYPE_6__* uav_resource_info; TYPE_3__* tgsm; struct wined3d_shader_version shader_version; } ;
struct wined3d_shader_instruction {int handler_idx; int src_count; int /*<<< orphan*/ * src; TYPE_5__* dst; TYPE_4__* ctx; } ;
struct shader_glsl_ctx_priv {int /*<<< orphan*/  string_buffers; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
typedef  enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
typedef  enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_13__ {int type; int data_type; unsigned int coord_size; unsigned int stride; int flags; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* idx; } ;
struct TYPE_12__ {TYPE_2__ reg; } ;
struct TYPE_11__ {struct wined3d_string_buffer* buffer; struct shader_glsl_ctx_priv* backend_data; struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_10__ {unsigned int stride; } ;
struct TYPE_8__ {unsigned int offset; } ;
typedef  int DWORD ;
typedef  size_t BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
#define  WINED3DSIH_ATOMIC_AND 146 
#define  WINED3DSIH_ATOMIC_CMP_STORE 145 
#define  WINED3DSIH_ATOMIC_IADD 144 
#define  WINED3DSIH_ATOMIC_IMAX 143 
#define  WINED3DSIH_ATOMIC_IMIN 142 
#define  WINED3DSIH_ATOMIC_OR 141 
#define  WINED3DSIH_ATOMIC_UMAX 140 
#define  WINED3DSIH_ATOMIC_UMIN 139 
#define  WINED3DSIH_ATOMIC_XOR 138 
#define  WINED3DSIH_IMM_ATOMIC_AND 137 
#define  WINED3DSIH_IMM_ATOMIC_CMP_EXCH 136 
#define  WINED3DSIH_IMM_ATOMIC_EXCH 135 
#define  WINED3DSIH_IMM_ATOMIC_IADD 134 
#define  WINED3DSIH_IMM_ATOMIC_IMAX 133 
#define  WINED3DSIH_IMM_ATOMIC_IMIN 132 
#define  WINED3DSIH_IMM_ATOMIC_OR 131 
#define  WINED3DSIH_IMM_ATOMIC_UMAX 130 
#define  WINED3DSIH_IMM_ATOMIC_UMIN 129 
#define  WINED3DSIH_IMM_ATOMIC_XOR 128 
 scalar_t__ WINED3DSPR_GROUPSHAREDMEM ; 
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3D_DATA_INT ; 
 int WINED3D_DATA_UINT ; 
 int WINED3D_VIEW_BUFFER_RAW ; 
 TYPE_6__* resource_type_info ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int,struct glsl_src_param*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct wined3d_string_buffer* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC11(const struct wined3d_shader_instruction *ins)
{
    const BOOL is_imm_instruction = WINED3DSIH_IMM_ATOMIC_AND <= ins->handler_idx
            && ins->handler_idx <= WINED3DSIH_IMM_ATOMIC_XOR;
    const struct wined3d_shader_reg_maps *reg_maps = ins->ctx->reg_maps;
    const struct wined3d_shader_version *version = &reg_maps->shader_version;
    struct shader_glsl_ctx_priv *priv = ins->ctx->backend_data;
    struct glsl_src_param structure_idx, offset, data, data2;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    enum wined3d_shader_resource_type resource_type;
    struct wined3d_string_buffer *address;
    enum wined3d_data_type data_type;
    unsigned int resource_idx, stride;
    const char *op, *resource;
    DWORD coord_mask;
    BOOL is_tgsm;

    resource_idx = ins->dst[is_imm_instruction].reg.idx[0].offset;
    is_tgsm = ins->dst[is_imm_instruction].reg.type == WINED3DSPR_GROUPSHAREDMEM;
    if (is_tgsm)
    {
        if (resource_idx >= reg_maps->tgsm_count)
        {
            FUNC1("Invalid TGSM index %u.\n", resource_idx);
            return;
        }
        resource = "g";
        data_type = WINED3D_DATA_UINT;
        coord_mask = 1;
        stride = reg_maps->tgsm[resource_idx].stride;
    }
    else
    {
        if (resource_idx >= FUNC0(reg_maps->uav_resource_info))
        {
            FUNC1("Invalid UAV index %u.\n", resource_idx);
            return;
        }
        resource_type = reg_maps->uav_resource_info[resource_idx].type;
        if (resource_type >= FUNC0(resource_type_info))
        {
            FUNC1("Unexpected resource type %#x.\n", resource_type);
            return;
        }
        resource = "image";
        data_type = reg_maps->uav_resource_info[resource_idx].data_type;
        coord_mask = (1u << resource_type_info[resource_type].coord_size) - 1;
        stride = reg_maps->uav_resource_info[resource_idx].stride;
    }

    switch (ins->handler_idx)
    {
        case WINED3DSIH_ATOMIC_AND:
        case WINED3DSIH_IMM_ATOMIC_AND:
            if (is_tgsm)
                op = "atomicAnd";
            else
                op = "imageAtomicAnd";
            break;
        case WINED3DSIH_ATOMIC_CMP_STORE:
        case WINED3DSIH_IMM_ATOMIC_CMP_EXCH:
            if (is_tgsm)
                op = "atomicCompSwap";
            else
                op = "imageAtomicCompSwap";
            break;
        case WINED3DSIH_ATOMIC_IADD:
        case WINED3DSIH_IMM_ATOMIC_IADD:
            if (is_tgsm)
                op = "atomicAdd";
            else
                op = "imageAtomicAdd";
            break;
        case WINED3DSIH_ATOMIC_IMAX:
        case WINED3DSIH_IMM_ATOMIC_IMAX:
            if (is_tgsm)
                op = "atomicMax";
            else
                op = "imageAtomicMax";
            if (data_type != WINED3D_DATA_INT)
            {
                FUNC2("Unhandled opcode %#x for unsigned integers.\n", ins->handler_idx);
                return;
            }
            break;
        case WINED3DSIH_ATOMIC_IMIN:
        case WINED3DSIH_IMM_ATOMIC_IMIN:
            if (is_tgsm)
                op = "atomicMin";
            else
                op = "imageAtomicMin";
            if (data_type != WINED3D_DATA_INT)
            {
                FUNC2("Unhandled opcode %#x for unsigned integers.\n", ins->handler_idx);
                return;
            }
            break;
        case WINED3DSIH_ATOMIC_OR:
        case WINED3DSIH_IMM_ATOMIC_OR:
            if (is_tgsm)
                op = "atomicOr";
            else
                op = "imageAtomicOr";
            break;
        case WINED3DSIH_ATOMIC_UMAX:
        case WINED3DSIH_IMM_ATOMIC_UMAX:
            if (is_tgsm)
                op = "atomicMax";
            else
                op = "imageAtomicMax";
            if (data_type != WINED3D_DATA_UINT)
            {
                FUNC2("Unhandled opcode %#x for signed integers.\n", ins->handler_idx);
                return;
            }
            break;
        case WINED3DSIH_ATOMIC_UMIN:
        case WINED3DSIH_IMM_ATOMIC_UMIN:
            if (is_tgsm)
                op = "atomicMin";
            else
                op = "imageAtomicMin";
            if (data_type != WINED3D_DATA_UINT)
            {
                FUNC2("Unhandled opcode %#x for signed integers.\n", ins->handler_idx);
                return;
            }
            break;
        case WINED3DSIH_ATOMIC_XOR:
        case WINED3DSIH_IMM_ATOMIC_XOR:
            if (is_tgsm)
                op = "atomicXor";
            else
                op = "imageAtomicXor";
            break;
        case WINED3DSIH_IMM_ATOMIC_EXCH:
            if (is_tgsm)
                op = "atomicExchange";
            else
                op = "imageAtomicExchange";
            break;
        default:
            FUNC1("Unhandled opcode %#x.\n", ins->handler_idx);
            return;
    }

    address = FUNC8(priv->string_buffers);
    if (stride)
    {
        FUNC4(ins, &ins->src[0], WINED3DSP_WRITEMASK_0, &structure_idx);
        FUNC4(ins, &ins->src[0], WINED3DSP_WRITEMASK_1, &offset);
        FUNC10(address, "%s * %u + %s / 4", structure_idx.param_str, stride, offset.param_str);
    }
    else
    {
        FUNC4(ins, &ins->src[0], coord_mask, &offset);
        FUNC10(address, "%s", offset.param_str);
        if (is_tgsm || (reg_maps->uav_resource_info[resource_idx].flags & WINED3D_VIEW_BUFFER_RAW))
            FUNC3(address, "/ 4");
    }

    if (is_imm_instruction)
        FUNC6(ins->ctx->buffer, ins, &ins->dst[0], data_type);

    if (is_tgsm)
        FUNC3(buffer, "%s(%s_%s%u[%s], ",
                op, FUNC7(version->type), resource, resource_idx, address->buffer);
    else
        FUNC3(buffer, "%s(%s_%s%u, %s, ",
                op, FUNC7(version->type), resource, resource_idx, address->buffer);

    FUNC5(ins, &ins->src[1], WINED3DSP_WRITEMASK_0, &data, data_type);
    FUNC3(buffer, "%s", data.param_str);
    if (ins->src_count >= 3)
    {
        FUNC5(ins, &ins->src[2], WINED3DSP_WRITEMASK_0, &data2, data_type);
        FUNC3(buffer, ", %s", data2.param_str);
    }

    if (is_imm_instruction)
        FUNC3(buffer, ")");
    FUNC3(buffer, ");\n");

    FUNC9(priv->string_buffers, address);
}