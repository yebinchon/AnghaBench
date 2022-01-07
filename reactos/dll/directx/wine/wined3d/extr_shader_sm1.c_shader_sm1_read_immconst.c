
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int immconst_data; } ;
struct TYPE_6__ {int data_type; int immconst_type; TYPE_2__ u; TYPE_1__* idx; int type; } ;
struct wined3d_shader_src_param {scalar_t__ modifiers; int swizzle; TYPE_3__ reg; } ;
typedef enum wined3d_immconst_type { ____Placeholder_wined3d_immconst_type } wined3d_immconst_type ;
typedef enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
struct TYPE_4__ {unsigned int offset; int * rel_addr; } ;
typedef int DWORD ;


 int WINED3DSPR_IMMCONST ;
 int WINED3DSP_NOSWIZZLE ;
 int WINED3D_IMMCONST_VEC4 ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static void shader_sm1_read_immconst(const DWORD **ptr, struct wined3d_shader_src_param *src_param,
        enum wined3d_immconst_type type, enum wined3d_data_type data_type)
{
    unsigned int count = type == WINED3D_IMMCONST_VEC4 ? 4 : 1;
    src_param->reg.type = WINED3DSPR_IMMCONST;
    src_param->reg.data_type = data_type;
    src_param->reg.idx[0].offset = ~0U;
    src_param->reg.idx[0].rel_addr = ((void*)0);
    src_param->reg.idx[1].offset = ~0U;
    src_param->reg.idx[1].rel_addr = ((void*)0);
    src_param->reg.immconst_type = type;
    memcpy(src_param->reg.u.immconst_data, *ptr, count * sizeof(DWORD));
    src_param->swizzle = WINED3DSP_NOSWIZZLE;
    src_param->modifiers = 0;

    *ptr += count;
}
