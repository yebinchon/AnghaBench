
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int dummy; } ;
typedef scalar_t__ DWORD ;


 int STATE_TEXTURESTAGE (scalar_t__,scalar_t__) ;
 scalar_t__ WINED3D_HIGHEST_TEXTURE_STATE ;
 int context_invalidate_state (struct wined3d_context*,int ) ;

__attribute__((used)) static void context_invalidate_texture_stage(struct wined3d_context *context, DWORD stage)
{
    DWORD i;

    for (i = 0; i <= WINED3D_HIGHEST_TEXTURE_STATE; ++i)
        context_invalidate_state(context, STATE_TEXTURESTAGE(stage, i));
}
