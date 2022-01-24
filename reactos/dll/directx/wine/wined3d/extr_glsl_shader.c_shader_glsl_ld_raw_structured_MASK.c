#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__* idx; } ;
struct wined3d_shader_src_param {int /*<<< orphan*/  swizzle; TYPE_3__ reg; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct wined3d_shader_reg_maps {unsigned int tgsm_count; TYPE_4__* tgsm; TYPE_7__* uav_resource_info; int /*<<< orphan*/  sampler_map; TYPE_7__* resource_info; TYPE_1__ shader_version; } ;
struct wined3d_shader_instruction {int src_count; scalar_t__ handler_idx; TYPE_5__* ctx; struct wined3d_shader_dst_param* dst; struct wined3d_shader_src_param* src; } ;
struct TYPE_13__ {int /*<<< orphan*/  data_type; } ;
struct wined3d_shader_dst_param {unsigned int write_mask; TYPE_6__ reg; } ;
struct shader_glsl_ctx_priv {int /*<<< orphan*/  string_buffers; } ;
struct glsl_src_param {int /*<<< orphan*/  param_str; } ;
struct TYPE_14__ {unsigned int stride; } ;
struct TYPE_12__ {struct wined3d_string_buffer* buffer; struct shader_glsl_ctx_priv* backend_data; struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_11__ {unsigned int stride; } ;
struct TYPE_9__ {unsigned int offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ WINED3DSIH_LD_STRUCTURED ; 
 scalar_t__ WINED3DSPR_RESOURCE ; 
 scalar_t__ WINED3DSPR_UAV ; 
 unsigned int WINED3DSP_WRITEMASK_0 ; 
 int /*<<< orphan*/  WINED3D_SAMPLER_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,struct wined3d_shader_src_param*,unsigned int,struct glsl_src_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 struct wined3d_string_buffer* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_string_buffer*,char*) ; 

__attribute__((used)) static void FUNC12(const struct wined3d_shader_instruction *ins)
{
    const char *prefix = FUNC6(ins->ctx->reg_maps->shader_version.type);
    const struct wined3d_shader_src_param *src = &ins->src[ins->src_count - 1];
    unsigned int i, swizzle, resource_idx, bind_idx, stride, src_idx = 0;
    const struct wined3d_shader_reg_maps *reg_maps = ins->ctx->reg_maps;
    struct shader_glsl_ctx_priv *priv = ins->ctx->backend_data;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param structure_idx, offset;
    struct wined3d_string_buffer *address;
    struct wined3d_shader_dst_param dst;
    const char *function, *resource;

    resource_idx = src->reg.idx[0].offset;
    if (src->reg.type == WINED3DSPR_RESOURCE)
    {
        if (resource_idx >= FUNC0(reg_maps->resource_info))
        {
            FUNC1("Invalid resource index %u.\n", resource_idx);
            return;
        }
        stride = reg_maps->resource_info[resource_idx].stride;
        bind_idx = FUNC5(&reg_maps->sampler_map, resource_idx, WINED3D_SAMPLER_DEFAULT);
        function = "texelFetch";
        resource = "sampler";
    }
    else if (src->reg.type == WINED3DSPR_UAV)
    {
        if (resource_idx >= FUNC0(reg_maps->uav_resource_info))
        {
            FUNC1("Invalid UAV index %u.\n", resource_idx);
            return;
        }
        stride = reg_maps->uav_resource_info[resource_idx].stride;
        bind_idx = resource_idx;
        function = "imageLoad";
        resource = "image";
    }
    else
    {
        if (resource_idx >= reg_maps->tgsm_count)
        {
            FUNC1("Invalid TGSM index %u.\n", resource_idx);
            return;
        }
        stride = reg_maps->tgsm[resource_idx].stride;
        bind_idx = resource_idx;
        function = NULL;
        resource = "g";
    }

    address = FUNC9(priv->string_buffers);
    if (ins->handler_idx == WINED3DSIH_LD_STRUCTURED)
    {
        FUNC3(ins, &ins->src[src_idx++], WINED3DSP_WRITEMASK_0, &structure_idx);
        FUNC2(address, "%s * %u + ", structure_idx.param_str, stride);
    }
    FUNC3(ins, &ins->src[src_idx++], WINED3DSP_WRITEMASK_0, &offset);
    FUNC2(address, "%s / 4", offset.param_str);

    dst = ins->dst[0];
    if (FUNC7(dst.write_mask) > 1)
    {
        /* The instruction is split into multiple lines. The first lines may
         * overwrite source parameters of the following lines. */
        FUNC2(buffer, "tmp0.x = intBitsToFloat(%s);\n", address->buffer);
        FUNC11(address, "floatBitsToInt(tmp0.x)");
    }

    for (i = 0; i < 4; ++i)
    {
        dst.write_mask = ins->dst[0].write_mask & (WINED3DSP_WRITEMASK_0 << i);
        if (!FUNC4(ins->ctx->buffer, ins, &dst, dst.reg.data_type))
            continue;

        swizzle = FUNC8(src->swizzle, i);
        if (function)
            FUNC2(buffer, "%s(%s_%s%u, %s + %u).x);\n",
                    function, prefix, resource, bind_idx, address->buffer, swizzle);
        else
            FUNC2(buffer, "%s_%s%u[%s + %u]);\n",
                    prefix, resource, bind_idx, address->buffer, swizzle);
    }

    FUNC10(priv->string_buffers, address);
}