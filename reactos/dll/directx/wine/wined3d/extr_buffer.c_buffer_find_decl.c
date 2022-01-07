
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_stream_info {int dummy; } ;
struct wined3d_state {int dummy; } ;
struct TYPE_2__ {int usage; } ;
struct wined3d_buffer {int flags; scalar_t__ stride; int * conversion_map; TYPE_1__ resource; } ;
typedef scalar_t__ UINT ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;
 int WINED3DUSAGE_STATICDECL ;
 int WINED3D_BUFFER_FIXUP_XYZRHW ;
 int WINED3D_BUFFER_HASDESC ;
 int WINED3D_FFP_BLENDINDICES ;
 int WINED3D_FFP_BLENDWEIGHT ;
 int WINED3D_FFP_DIFFUSE ;
 int WINED3D_FFP_NORMAL ;
 int WINED3D_FFP_POSITION ;
 int WINED3D_FFP_SPECULAR ;
 int WINED3D_FFP_TEXCOORD0 ;
 int WINED3D_FFP_TEXCOORD1 ;
 int WINED3D_FFP_TEXCOORD2 ;
 int WINED3D_FFP_TEXCOORD3 ;
 int WINED3D_FFP_TEXCOORD4 ;
 int WINED3D_FFP_TEXCOORD5 ;
 int WINED3D_FFP_TEXCOORD6 ;
 int WINED3D_FFP_TEXCOORD7 ;
 scalar_t__ buffer_check_attribute (struct wined3d_buffer*,struct wined3d_stream_info const*,struct wined3d_state const*,int ,int ,scalar_t__*) ;
 int heap_free (int *) ;

__attribute__((used)) static BOOL buffer_find_decl(struct wined3d_buffer *This, const struct wined3d_stream_info *si,
        const struct wined3d_state *state, DWORD fixup_flags)
{
    UINT stride_this_run = 0;
    BOOL ret = FALSE;





    if (This->flags & WINED3D_BUFFER_HASDESC)
    {
        if(This->resource.usage & WINED3DUSAGE_STATICDECL) return FALSE;
    }

    if (!fixup_flags)
    {
        TRACE("No fixup required.\n");
        if(This->conversion_map)
        {
            heap_free(This->conversion_map);
            This->conversion_map = ((void*)0);
            This->stride = 0;
            return TRUE;
        }

        return FALSE;
    }

    TRACE("Finding vertex buffer conversion information\n");
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_POSITION,
            fixup_flags, &stride_this_run) || ret;
    fixup_flags &= ~WINED3D_BUFFER_FIXUP_XYZRHW;

    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_BLENDWEIGHT,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_BLENDINDICES,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_NORMAL,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_DIFFUSE,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_SPECULAR,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD0,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD1,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD2,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD3,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD4,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD5,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD6,
            fixup_flags, &stride_this_run) || ret;
    ret = buffer_check_attribute(This, si, state, WINED3D_FFP_TEXCOORD7,
            fixup_flags, &stride_this_run) || ret;

    if (!stride_this_run && This->conversion_map)
    {

        if (!ret)
            ERR("no converted attributes found, old conversion map exists, and no declaration change?\n");
        heap_free(This->conversion_map);
        This->conversion_map = ((void*)0);
        This->stride = 0;
    }

    if (ret) TRACE("Conversion information changed\n");

    return ret;
}
