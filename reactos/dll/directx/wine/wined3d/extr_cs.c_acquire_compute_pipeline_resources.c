
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int * unordered_access_view; int * shader; } ;


 size_t WINED3D_PIPELINE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 int acquire_shader_resources (struct wined3d_state const*,unsigned int) ;
 int acquire_unordered_access_resources (int ,int ) ;

__attribute__((used)) static void acquire_compute_pipeline_resources(const struct wined3d_state *state)
{
    acquire_shader_resources(state, 1u << WINED3D_SHADER_TYPE_COMPUTE);
    acquire_unordered_access_resources(state->shader[WINED3D_SHADER_TYPE_COMPUTE],
            state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);
}
