
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_signature_element {int mask; int register_idx; int component_type; int sysval_semantic; scalar_t__ stream_idx; int semantic_idx; int semantic_name; } ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {int write_mask; TYPE_2__ reg; } ;
struct wined3d_shader_semantic {TYPE_3__ reg; int usage; int usage_idx; } ;
struct TYPE_4__ {int offset; } ;


 int WINED3D_TYPE_FLOAT ;
 int shader_semantic_name_from_usage (int ) ;
 int shader_sysval_semantic_from_usage (int ) ;

__attribute__((used)) static void shader_signature_from_semantic(struct wined3d_shader_signature_element *e,
        const struct wined3d_shader_semantic *s)
{
    e->semantic_name = shader_semantic_name_from_usage(s->usage);
    e->semantic_idx = s->usage_idx;
    e->stream_idx = 0;
    e->sysval_semantic = shader_sysval_semantic_from_usage(s->usage);
    e->component_type = WINED3D_TYPE_FLOAT;
    e->register_idx = s->reg.reg.idx[0].offset;
    e->mask = s->reg.write_mask;
}
