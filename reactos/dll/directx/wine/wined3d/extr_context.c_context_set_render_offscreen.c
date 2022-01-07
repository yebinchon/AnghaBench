
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_context {scalar_t__ render_offscreen; TYPE_1__* gl_info; } ;
struct TYPE_2__ {scalar_t__* supported; } ;
typedef scalar_t__ BOOL ;


 size_t ARB_CLIP_CONTROL ;
 size_t ARB_FRAGMENT_COORD_CONVENTIONS ;
 int STATE_FRONTFACE ;
 int STATE_POINTSPRITECOORDORIGIN ;
 int STATE_SCISSORRECT ;
 int STATE_SHADER (int ) ;
 int STATE_TRANSFORM (int ) ;
 int STATE_VIEWPORT ;
 int WINED3D_SHADER_TYPE_DOMAIN ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int WINED3D_TS_PROJECTION ;
 int context_invalidate_state (struct wined3d_context*,int ) ;

__attribute__((used)) static void context_set_render_offscreen(struct wined3d_context *context, BOOL offscreen)
{
    if (context->render_offscreen == offscreen)
        return;

    context_invalidate_state(context, STATE_VIEWPORT);
    context_invalidate_state(context, STATE_SCISSORRECT);
    if (!context->gl_info->supported[ARB_CLIP_CONTROL])
    {
        context_invalidate_state(context, STATE_FRONTFACE);
        context_invalidate_state(context, STATE_POINTSPRITECOORDORIGIN);
        context_invalidate_state(context, STATE_TRANSFORM(WINED3D_TS_PROJECTION));
    }
    context_invalidate_state(context, STATE_SHADER(WINED3D_SHADER_TYPE_DOMAIN));
    if (context->gl_info->supported[ARB_FRAGMENT_COORD_CONVENTIONS])
        context_invalidate_state(context, STATE_SHADER(WINED3D_SHADER_TYPE_PIXEL));
    context->render_offscreen = offscreen;
}
