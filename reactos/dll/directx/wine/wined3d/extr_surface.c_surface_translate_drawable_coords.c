
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wined3d_texture {TYPE_1__* swapchain; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
typedef void* UINT ;
struct TYPE_10__ {int y; int x; int member_1; int member_0; } ;
struct TYPE_9__ {void* bottom; void* top; } ;
struct TYPE_8__ {struct wined3d_texture* front_buffer; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ POINT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_2__*) ;
 int OffsetRect (TYPE_2__*,int ,int ) ;
 int ScreenToClient (int ,TYPE_3__*) ;

void surface_translate_drawable_coords(const struct wined3d_surface *surface, HWND window, RECT *rect)
{
    struct wined3d_texture *texture = surface->container;
    POINT offset = {0, 0};
    UINT drawable_height;
    RECT windowsize;

    if (!texture->swapchain)
        return;

    if (texture == texture->swapchain->front_buffer)
    {
        ScreenToClient(window, &offset);
        OffsetRect(rect, offset.x, offset.y);
    }

    GetClientRect(window, &windowsize);
    drawable_height = windowsize.bottom - windowsize.top;

    rect->top = drawable_height - rect->top;
    rect->bottom = drawable_height - rect->bottom;
}
