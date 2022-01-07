
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_element {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_fvf_convert_state {struct wined3d_vertex_element* elements; int idx; scalar_t__ offset; struct wined3d_gl_info const* gl_info; } ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int) ;
 int WINED3DFMT_B8G8R8A8_UNORM ;
 int WINED3DFMT_R32G32B32A32_FLOAT ;
 int WINED3DFMT_R32G32B32_FLOAT ;
 int WINED3DFMT_R32G32_FLOAT ;
 int WINED3DFMT_R32_FLOAT ;
 int WINED3DFMT_R8G8B8A8_UINT ;
 int WINED3DFVF_DIFFUSE ;
 int WINED3DFVF_LASTBETA_D3DCOLOR ;
 int WINED3DFVF_LASTBETA_UBYTE4 ;
 int WINED3DFVF_NORMAL ;
 int WINED3DFVF_POSITION_MASK ;
 int WINED3DFVF_PSIZE ;
 int WINED3DFVF_SPECULAR ;
 int WINED3DFVF_TEXCOUNT_MASK ;
 int WINED3DFVF_TEXCOUNT_SHIFT ;




 int WINED3DFVF_XYZB1 ;
 int WINED3DFVF_XYZB2 ;
 int WINED3DFVF_XYZB5 ;
 int WINED3DFVF_XYZRHW ;
 int WINED3DFVF_XYZW ;
 int WINED3D_DECL_USAGE_BLEND_INDICES ;
 int WINED3D_DECL_USAGE_BLEND_WEIGHT ;
 int WINED3D_DECL_USAGE_COLOR ;
 int WINED3D_DECL_USAGE_NORMAL ;
 int WINED3D_DECL_USAGE_POSITION ;
 int WINED3D_DECL_USAGE_POSITIONT ;
 int WINED3D_DECL_USAGE_PSIZE ;
 int WINED3D_DECL_USAGE_TEXCOORD ;
 int append_decl_element (struct wined3d_fvf_convert_state*,int ,int ,unsigned int) ;
 struct wined3d_vertex_element* heap_calloc (unsigned int,int) ;

__attribute__((used)) static unsigned int convert_fvf_to_declaration(const struct wined3d_gl_info *gl_info,
        DWORD fvf, struct wined3d_vertex_element **elements)
{
    BOOL has_pos = !!(fvf & WINED3DFVF_POSITION_MASK);
    BOOL has_blend = (fvf & WINED3DFVF_XYZB5) > WINED3DFVF_XYZRHW;
    BOOL has_blend_idx = has_blend &&
       (((fvf & WINED3DFVF_XYZB5) == WINED3DFVF_XYZB5) ||
        (fvf & WINED3DFVF_LASTBETA_D3DCOLOR) ||
        (fvf & WINED3DFVF_LASTBETA_UBYTE4));
    BOOL has_normal = !!(fvf & WINED3DFVF_NORMAL);
    BOOL has_psize = !!(fvf & WINED3DFVF_PSIZE);
    BOOL has_diffuse = !!(fvf & WINED3DFVF_DIFFUSE);
    BOOL has_specular = !!(fvf & WINED3DFVF_SPECULAR);

    DWORD num_textures = (fvf & WINED3DFVF_TEXCOUNT_MASK) >> WINED3DFVF_TEXCOUNT_SHIFT;
    DWORD texcoords = (fvf & 0xffff0000) >> 16;
    struct wined3d_fvf_convert_state state;
    unsigned int size;
    unsigned int idx;
    DWORD num_blends = 1 + (((fvf & WINED3DFVF_XYZB5) - WINED3DFVF_XYZB1) >> 1);
    if (has_blend_idx) num_blends--;


    size = has_pos + (has_blend && num_blends > 0) + has_blend_idx + has_normal +
           has_psize + has_diffuse + has_specular + num_textures;

    state.gl_info = gl_info;
    if (!(state.elements = heap_calloc(size, sizeof(*state.elements))))
        return ~0u;
    state.offset = 0;
    state.idx = 0;

    if (has_pos)
    {
        if (!has_blend && (fvf & WINED3DFVF_XYZRHW))
            append_decl_element(&state, WINED3DFMT_R32G32B32A32_FLOAT, WINED3D_DECL_USAGE_POSITIONT, 0);
        else if ((fvf & WINED3DFVF_XYZW) == WINED3DFVF_XYZW)
            append_decl_element(&state, WINED3DFMT_R32G32B32A32_FLOAT, WINED3D_DECL_USAGE_POSITION, 0);
        else
            append_decl_element(&state, WINED3DFMT_R32G32B32_FLOAT, WINED3D_DECL_USAGE_POSITION, 0);
    }

    if (has_blend && (num_blends > 0))
    {
        if ((fvf & WINED3DFVF_XYZB5) == WINED3DFVF_XYZB2 && (fvf & WINED3DFVF_LASTBETA_D3DCOLOR))
            append_decl_element(&state, WINED3DFMT_B8G8R8A8_UNORM, WINED3D_DECL_USAGE_BLEND_WEIGHT, 0);
        else
        {
            switch (num_blends)
            {
                case 1:
                    append_decl_element(&state, WINED3DFMT_R32_FLOAT, WINED3D_DECL_USAGE_BLEND_WEIGHT, 0);
                    break;
                case 2:
                    append_decl_element(&state, WINED3DFMT_R32G32_FLOAT, WINED3D_DECL_USAGE_BLEND_WEIGHT, 0);
                    break;
                case 3:
                    append_decl_element(&state, WINED3DFMT_R32G32B32_FLOAT, WINED3D_DECL_USAGE_BLEND_WEIGHT, 0);
                    break;
                case 4:
                    append_decl_element(&state, WINED3DFMT_R32G32B32A32_FLOAT, WINED3D_DECL_USAGE_BLEND_WEIGHT, 0);
                    break;
                default:
                    ERR("Unexpected amount of blend values: %u\n", num_blends);
            }
        }
    }

    if (has_blend_idx)
    {
        if ((fvf & WINED3DFVF_LASTBETA_UBYTE4)
                || ((fvf & WINED3DFVF_XYZB5) == WINED3DFVF_XYZB2 && (fvf & WINED3DFVF_LASTBETA_D3DCOLOR)))
            append_decl_element(&state, WINED3DFMT_R8G8B8A8_UINT, WINED3D_DECL_USAGE_BLEND_INDICES, 0);
        else if (fvf & WINED3DFVF_LASTBETA_D3DCOLOR)
            append_decl_element(&state, WINED3DFMT_B8G8R8A8_UNORM, WINED3D_DECL_USAGE_BLEND_INDICES, 0);
        else
            append_decl_element(&state, WINED3DFMT_R32_FLOAT, WINED3D_DECL_USAGE_BLEND_INDICES, 0);
    }

    if (has_normal)
        append_decl_element(&state, WINED3DFMT_R32G32B32_FLOAT, WINED3D_DECL_USAGE_NORMAL, 0);
    if (has_psize)
        append_decl_element(&state, WINED3DFMT_R32_FLOAT, WINED3D_DECL_USAGE_PSIZE, 0);
    if (has_diffuse)
        append_decl_element(&state, WINED3DFMT_B8G8R8A8_UNORM, WINED3D_DECL_USAGE_COLOR, 0);
    if (has_specular)
        append_decl_element(&state, WINED3DFMT_B8G8R8A8_UNORM, WINED3D_DECL_USAGE_COLOR, 1);

    for (idx = 0; idx < num_textures; ++idx)
    {
        switch ((texcoords >> (idx * 2)) & 0x03)
        {
            case 131:
                append_decl_element(&state, WINED3DFMT_R32_FLOAT, WINED3D_DECL_USAGE_TEXCOORD, idx);
                break;
            case 130:
                append_decl_element(&state, WINED3DFMT_R32G32_FLOAT, WINED3D_DECL_USAGE_TEXCOORD, idx);
                break;
            case 129:
                append_decl_element(&state, WINED3DFMT_R32G32B32_FLOAT, WINED3D_DECL_USAGE_TEXCOORD, idx);
                break;
            case 128:
                append_decl_element(&state, WINED3DFMT_R32G32B32A32_FLOAT, WINED3D_DECL_USAGE_TEXCOORD, idx);
                break;
        }
    }

    *elements = state.elements;
    return size;
}
