
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_rendertarget_view {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ id; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ WINED3DFMT_NULL ;

__attribute__((used)) static BOOL have_framebuffer_attachment(unsigned int rt_count, struct wined3d_rendertarget_view * const *rts,
        const struct wined3d_rendertarget_view *ds)
{
    unsigned int i;

    if (ds)
        return TRUE;

    for (i = 0; i < rt_count; ++i)
    {
        if (rts[i] && rts[i]->format->id != WINED3DFMT_NULL)
            return TRUE;
    }

    return FALSE;
}
