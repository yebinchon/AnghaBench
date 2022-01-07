
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__* idx; } ;
struct wined3d_shader_src_param {int swizzle; TYPE_3__ reg; } ;
struct TYPE_8__ {int type; } ;
struct wined3d_shader_reg_maps {unsigned int tgsm_count; TYPE_4__* tgsm; TYPE_7__* uav_resource_info; int sampler_map; TYPE_7__* resource_info; TYPE_1__ shader_version; } ;
struct wined3d_shader_instruction {int src_count; scalar_t__ handler_idx; TYPE_5__* ctx; struct wined3d_shader_dst_param* dst; struct wined3d_shader_src_param* src; } ;
struct TYPE_13__ {int data_type; } ;
struct wined3d_shader_dst_param {unsigned int write_mask; TYPE_6__ reg; } ;
struct shader_glsl_ctx_priv {int string_buffers; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_14__ {unsigned int stride; } ;
struct TYPE_12__ {struct wined3d_string_buffer* buffer; struct shader_glsl_ctx_priv* backend_data; struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_11__ {unsigned int stride; } ;
struct TYPE_9__ {unsigned int offset; } ;


 unsigned int ARRAY_SIZE (TYPE_7__*) ;
 int ERR (char*,unsigned int) ;
 scalar_t__ WINED3DSIH_LD_STRUCTURED ;
 scalar_t__ WINED3DSPR_RESOURCE ;
 scalar_t__ WINED3DSPR_UAV ;
 unsigned int WINED3DSP_WRITEMASK_0 ;
 int WINED3D_SAMPLER_DEFAULT ;
 int shader_addline (struct wined3d_string_buffer*,char*,char const*,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,struct wined3d_shader_src_param*,unsigned int,struct glsl_src_param*) ;
 int shader_glsl_append_dst_ext (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param*,int ) ;
 unsigned int shader_glsl_find_sampler (int *,unsigned int,int ) ;
 char* shader_glsl_get_prefix (int ) ;
 int shader_glsl_get_write_mask_size (unsigned int) ;
 unsigned int shader_glsl_swizzle_get_component (int ,unsigned int) ;
 struct wined3d_string_buffer* string_buffer_get (int ) ;
 int string_buffer_release (int ,struct wined3d_string_buffer*) ;
 int string_buffer_sprintf (struct wined3d_string_buffer*,char*) ;

__attribute__((used)) static void shader_glsl_ld_raw_structured(const struct wined3d_shader_instruction *ins)
{
    const char *prefix = shader_glsl_get_prefix(ins->ctx->reg_maps->shader_version.type);
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
        if (resource_idx >= ARRAY_SIZE(reg_maps->resource_info))
        {
            ERR("Invalid resource index %u.\n", resource_idx);
            return;
        }
        stride = reg_maps->resource_info[resource_idx].stride;
        bind_idx = shader_glsl_find_sampler(&reg_maps->sampler_map, resource_idx, WINED3D_SAMPLER_DEFAULT);
        function = "texelFetch";
        resource = "sampler";
    }
    else if (src->reg.type == WINED3DSPR_UAV)
    {
        if (resource_idx >= ARRAY_SIZE(reg_maps->uav_resource_info))
        {
            ERR("Invalid UAV index %u.\n", resource_idx);
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
            ERR("Invalid TGSM index %u.\n", resource_idx);
            return;
        }
        stride = reg_maps->tgsm[resource_idx].stride;
        bind_idx = resource_idx;
        function = ((void*)0);
        resource = "g";
    }

    address = string_buffer_get(priv->string_buffers);
    if (ins->handler_idx == WINED3DSIH_LD_STRUCTURED)
    {
        shader_glsl_add_src_param(ins, &ins->src[src_idx++], WINED3DSP_WRITEMASK_0, &structure_idx);
        shader_addline(address, "%s * %u + ", structure_idx.param_str, stride);
    }
    shader_glsl_add_src_param(ins, &ins->src[src_idx++], WINED3DSP_WRITEMASK_0, &offset);
    shader_addline(address, "%s / 4", offset.param_str);

    dst = ins->dst[0];
    if (shader_glsl_get_write_mask_size(dst.write_mask) > 1)
    {


        shader_addline(buffer, "tmp0.x = intBitsToFloat(%s);\n", address->buffer);
        string_buffer_sprintf(address, "floatBitsToInt(tmp0.x)");
    }

    for (i = 0; i < 4; ++i)
    {
        dst.write_mask = ins->dst[0].write_mask & (WINED3DSP_WRITEMASK_0 << i);
        if (!shader_glsl_append_dst_ext(ins->ctx->buffer, ins, &dst, dst.reg.data_type))
            continue;

        swizzle = shader_glsl_swizzle_get_component(src->swizzle, i);
        if (function)
            shader_addline(buffer, "%s(%s_%s%u, %s + %u).x);\n",
                    function, prefix, resource, bind_idx, address->buffer, swizzle);
        else
            shader_addline(buffer, "%s_%s%u[%s + %u]);\n",
                    prefix, resource, bind_idx, address->buffer, swizzle);
    }

    string_buffer_release(priv->string_buffers, address);
}
