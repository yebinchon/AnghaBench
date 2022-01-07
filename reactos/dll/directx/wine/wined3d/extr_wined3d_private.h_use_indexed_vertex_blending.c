
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_stream_info {int use_map; } ;
struct wined3d_state {scalar_t__* render_states; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WINED3D_FFP_BLENDINDICES ;
 int WINED3D_FFP_BLENDWEIGHT ;
 size_t WINED3D_RS_INDEXEDVERTEXBLENDENABLE ;
 size_t WINED3D_RS_VERTEXBLEND ;
 scalar_t__ WINED3D_VBF_DISABLE ;

__attribute__((used)) static inline BOOL use_indexed_vertex_blending(const struct wined3d_state *state, const struct wined3d_stream_info *si)
{
    if (!state->render_states[WINED3D_RS_INDEXEDVERTEXBLENDENABLE])
        return FALSE;

    if (state->render_states[WINED3D_RS_VERTEXBLEND] == WINED3D_VBF_DISABLE)
        return FALSE;

    if (!(si->use_map & (1 << WINED3D_FFP_BLENDINDICES)) || !(si->use_map & (1 << WINED3D_FFP_BLENDWEIGHT)))
        return FALSE;

    return TRUE;
}
