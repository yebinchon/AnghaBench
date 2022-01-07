
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_saved_states {int indices; int material; int viewport; int vertexDecl; int pixelShader; int vertexShader; int scissorRect; int streamSource; int streamFreq; int textures; int* textureState; int* samplerState; unsigned int clipplane; int pixelShaderConstantsB; int pixelShaderConstantsI; int vertexShaderConstantsB; int vertexShaderConstantsI; int vs_consts_f; int ps_consts_f; int renderState; int transform; } ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ HIGHEST_TRANSFORMSTATE ;
 unsigned int MAX_CLIP_DISTANCES ;
 unsigned int MAX_COMBINED_SAMPLERS ;
 unsigned int MAX_TEXTURES ;
 int TRUE ;
 scalar_t__ WINEHIGHEST_RENDER_STATE ;
 int memset (int ,int ,int) ;
 int stateblock_set_bits (int ,scalar_t__) ;

__attribute__((used)) static void stateblock_savedstates_set_all(struct wined3d_saved_states *states, DWORD vs_consts, DWORD ps_consts)
{
    unsigned int i;


    states->indices = 1;
    states->material = 1;
    states->viewport = 1;
    states->vertexDecl = 1;
    states->pixelShader = 1;
    states->vertexShader = 1;
    states->scissorRect = 1;


    states->streamSource = 0xffff;
    states->streamFreq = 0xffff;
    states->textures = 0xfffff;
    stateblock_set_bits(states->transform, HIGHEST_TRANSFORMSTATE + 1);
    stateblock_set_bits(states->renderState, WINEHIGHEST_RENDER_STATE + 1);
    for (i = 0; i < MAX_TEXTURES; ++i) states->textureState[i] = 0x3ffff;
    for (i = 0; i < MAX_COMBINED_SAMPLERS; ++i) states->samplerState[i] = 0x3ffe;
    states->clipplane = (1u << MAX_CLIP_DISTANCES) - 1;
    states->pixelShaderConstantsB = 0xffff;
    states->pixelShaderConstantsI = 0xffff;
    states->vertexShaderConstantsB = 0xffff;
    states->vertexShaderConstantsI = 0xffff;


    memset(states->ps_consts_f, TRUE, sizeof(BOOL) * ps_consts);
    memset(states->vs_consts_f, TRUE, sizeof(BOOL) * vs_consts);
}
