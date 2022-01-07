
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_state {struct wined3d_shader** shader; } ;
struct TYPE_4__ {int element_count; } ;
struct TYPE_5__ {TYPE_1__ so_desc; } ;
struct TYPE_6__ {TYPE_2__ gs; } ;
struct wined3d_shader {TYPE_3__ u; } ;
typedef int BOOL ;


 int FALSE ;
 size_t WINED3D_SHADER_TYPE_GEOMETRY ;

__attribute__((used)) static BOOL use_transform_feedback(const struct wined3d_state *state)
{
    const struct wined3d_shader *shader;
    if (!(shader = state->shader[WINED3D_SHADER_TYPE_GEOMETRY]))
        return FALSE;
    return shader->u.gs.so_desc.element_count;
}
