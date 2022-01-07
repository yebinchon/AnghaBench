
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_signature_element {int semantic_idx; int mask; } ;
typedef int HRESULT ;


 int MAX_CLIP_DISTANCES ;
 int WARN (char*,int) ;
 int WINED3DERR_INVALIDCALL ;
 int WINED3DSP_WRITEMASK_ALL ;
 int WINED3D_OK ;

__attribute__((used)) static HRESULT shader_calculate_clip_or_cull_distance_mask(
        const struct wined3d_shader_signature_element *e, unsigned int *mask)
{



    if (e->semantic_idx >= MAX_CLIP_DISTANCES / 4)
    {
        *mask = 0;
        WARN("Invalid clip/cull distance index %u.\n", e->semantic_idx);
        return WINED3DERR_INVALIDCALL;
    }

    *mask = (e->mask & WINED3DSP_WRITEMASK_ALL) << (4 * e->semantic_idx);
    return WINED3D_OK;
}
