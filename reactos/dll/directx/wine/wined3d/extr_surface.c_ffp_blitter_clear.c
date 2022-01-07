
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_rendertarget_view {int format_flags; TYPE_2__* format; TYPE_1__* resource; } ;
struct wined3d_fb_state {struct wined3d_rendertarget_view* depth_stencil; struct wined3d_rendertarget_view** render_targets; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_color {int dummy; } ;
struct wined3d_blitter {TYPE_3__* ops; struct wined3d_blitter* next; } ;
struct TYPE_8__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_7__ {int (* blitter_clear ) (struct wined3d_blitter*,struct wined3d_device*,unsigned int,struct wined3d_fb_state const*,unsigned int,int const*,int const*,int,struct wined3d_color const*,float,int) ;} ;
struct TYPE_6__ {int stencil_size; int depth_size; } ;
struct TYPE_5__ {int usage; } ;
typedef int RECT ;
typedef int DWORD ;


 scalar_t__ ORM_FBO ;
 int WINED3DCLEAR_STENCIL ;
 int WINED3DCLEAR_TARGET ;
 int WINED3DCLEAR_ZBUFFER ;
 int WINED3DFMT_FLAG_FBO_ATTACHABLE ;
 int WINED3DUSAGE_RENDERTARGET ;
 int device_clear_render_targets (struct wined3d_device*,unsigned int,struct wined3d_fb_state const*,unsigned int,int const*,int const*,int,struct wined3d_color const*,float,int) ;
 scalar_t__ ffp_blitter_use_cpu_clear (struct wined3d_rendertarget_view*) ;
 int stub1 (struct wined3d_blitter*,struct wined3d_device*,unsigned int,struct wined3d_fb_state const*,unsigned int,int const*,int const*,int,struct wined3d_color const*,float,int) ;
 TYPE_4__ wined3d_settings ;

__attribute__((used)) static void ffp_blitter_clear(struct wined3d_blitter *blitter, struct wined3d_device *device,
        unsigned int rt_count, const struct wined3d_fb_state *fb, unsigned int rect_count, const RECT *clear_rects,
        const RECT *draw_rect, DWORD flags, const struct wined3d_color *colour, float depth, DWORD stencil)
{
    struct wined3d_rendertarget_view *view;
    struct wined3d_blitter *next;
    DWORD next_flags = 0;
    unsigned int i;

    if (flags & WINED3DCLEAR_TARGET)
    {
        for (i = 0; i < rt_count; ++i)
        {
            if (!(view = fb->render_targets[i]))
                continue;

            if (ffp_blitter_use_cpu_clear(view)
                    || (!(view->resource->usage & WINED3DUSAGE_RENDERTARGET)
                    && (wined3d_settings.offscreen_rendering_mode != ORM_FBO
                    || !(view->format_flags & WINED3DFMT_FLAG_FBO_ATTACHABLE))))
            {
                next_flags |= WINED3DCLEAR_TARGET;
                flags &= ~WINED3DCLEAR_TARGET;
                break;
            }



        }
    }

    if ((flags & (WINED3DCLEAR_ZBUFFER | WINED3DCLEAR_STENCIL)) && (view = fb->depth_stencil)
            && (!view->format->depth_size || (flags & WINED3DCLEAR_ZBUFFER))
            && (!view->format->stencil_size || (flags & WINED3DCLEAR_STENCIL))
            && ffp_blitter_use_cpu_clear(view))
    {
        next_flags |= flags & (WINED3DCLEAR_ZBUFFER | WINED3DCLEAR_STENCIL);
        flags &= ~(WINED3DCLEAR_ZBUFFER | WINED3DCLEAR_STENCIL);
    }

    if (flags)
        device_clear_render_targets(device, rt_count, fb, rect_count,
                clear_rects, draw_rect, flags, colour, depth, stencil);

    if (next_flags && (next = blitter->next))
        next->ops->blitter_clear(next, device, rt_count, fb, rect_count,
                clear_rects, draw_rect, next_flags, colour, depth, stencil);
}
