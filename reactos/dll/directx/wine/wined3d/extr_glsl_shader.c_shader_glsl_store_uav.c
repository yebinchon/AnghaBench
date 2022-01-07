
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_shader_version {int type; } ;
struct wined3d_shader_reg_maps {TYPE_5__* uav_resource_info; struct wined3d_shader_version shader_version; } ;
struct wined3d_shader_instruction {TYPE_4__* ctx; int * src; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
typedef enum wined3d_shader_resource_type { ____Placeholder_wined3d_shader_resource_type } wined3d_shader_resource_type ;
typedef enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_11__ {int type; int data_type; unsigned int coord_size; } ;
struct TYPE_10__ {int buffer; struct wined3d_shader_reg_maps* reg_maps; } ;
struct TYPE_8__ {TYPE_1__* idx; } ;
struct TYPE_9__ {TYPE_2__ reg; } ;
struct TYPE_7__ {unsigned int offset; } ;
typedef unsigned int DWORD ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int ERR (char*,int) ;
 int WINED3DSP_WRITEMASK_ALL ;
 TYPE_5__* resource_type_info ;
 int shader_addline (int ,char*,int ,unsigned int,int ,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,unsigned int,struct glsl_src_param*) ;
 int shader_glsl_add_src_param_ext (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*,int) ;
 int shader_glsl_get_prefix (int ) ;

__attribute__((used)) static void shader_glsl_store_uav(const struct wined3d_shader_instruction *ins)
{
    const struct wined3d_shader_reg_maps *reg_maps = ins->ctx->reg_maps;
    const struct wined3d_shader_version *version = &reg_maps->shader_version;
    struct glsl_src_param image_coord_param, image_data_param;
    enum wined3d_shader_resource_type resource_type;
    enum wined3d_data_type data_type;
    unsigned int uav_idx;
    DWORD coord_mask;

    uav_idx = ins->dst[0].reg.idx[0].offset;
    if (uav_idx >= ARRAY_SIZE(reg_maps->uav_resource_info))
    {
        ERR("Invalid UAV index %u.\n", uav_idx);
        return;
    }
    resource_type = reg_maps->uav_resource_info[uav_idx].type;
    if (resource_type >= ARRAY_SIZE(resource_type_info))
    {
        ERR("Unexpected resource type %#x.\n", resource_type);
        return;
    }
    data_type = reg_maps->uav_resource_info[uav_idx].data_type;
    coord_mask = (1u << resource_type_info[resource_type].coord_size) - 1;

    shader_glsl_add_src_param(ins, &ins->src[0], coord_mask, &image_coord_param);
    shader_glsl_add_src_param_ext(ins, &ins->src[1], WINED3DSP_WRITEMASK_ALL, &image_data_param, data_type);
    shader_addline(ins->ctx->buffer, "imageStore(%s_image%u, %s, %s);\n",
            shader_glsl_get_prefix(version->type), uav_idx,
            image_coord_param.param_str, image_data_param.param_str);
}
