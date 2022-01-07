
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_saved_states {int vertexDecl; int vertexShader; unsigned int* renderState; int* textureState; unsigned int* samplerState; int vertexShaderConstantsB; int vertexShaderConstantsI; int vs_consts_f; } ;
typedef unsigned int WORD ;
typedef int DWORD ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int MAX_COMBINED_SAMPLERS ;
 unsigned int MAX_TEXTURES ;
 int TRUE ;
 int memset (int ,int ,int) ;
 unsigned int* vertex_states_render ;
 unsigned int* vertex_states_sampler ;
 unsigned int* vertex_states_texture ;

__attribute__((used)) static void stateblock_savedstates_set_vertex(struct wined3d_saved_states *states, const DWORD num_constants)
{
    DWORD texture_mask = 0;
    WORD sampler_mask = 0;
    unsigned int i;

    states->vertexDecl = 1;
    states->vertexShader = 1;

    for (i = 0; i < ARRAY_SIZE(vertex_states_render); ++i)
    {
        DWORD rs = vertex_states_render[i];
        states->renderState[rs >> 5] |= 1u << (rs & 0x1f);
    }

    for (i = 0; i < ARRAY_SIZE(vertex_states_texture); ++i)
        texture_mask |= 1u << vertex_states_texture[i];
    for (i = 0; i < MAX_TEXTURES; ++i) states->textureState[i] = texture_mask;
    for (i = 0; i < ARRAY_SIZE(vertex_states_sampler); ++i)
        sampler_mask |= 1u << vertex_states_sampler[i];
    for (i = 0; i < MAX_COMBINED_SAMPLERS; ++i) states->samplerState[i] = sampler_mask;
    states->vertexShaderConstantsB = 0xffff;
    states->vertexShaderConstantsI = 0xffff;

    memset(states->vs_consts_f, TRUE, sizeof(BOOL) * num_constants);
}
