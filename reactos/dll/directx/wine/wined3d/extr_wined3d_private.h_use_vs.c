
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {TYPE_1__* vertex_declaration; scalar_t__* shader; } ;
struct TYPE_2__ {int position_transformed; } ;
typedef int BOOL ;


 size_t WINED3D_SHADER_TYPE_VERTEX ;

__attribute__((used)) static inline BOOL use_vs(const struct wined3d_state *state)
{


    return state->shader[WINED3D_SHADER_TYPE_VERTEX]
            && (!state->vertex_declaration || !state->vertex_declaration->position_transformed);
}
