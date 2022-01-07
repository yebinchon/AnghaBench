
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dwHeight; int dwWidth; } ;
struct ddraw_surface {int sub_resource_idx; int wined3d_texture; TYPE_2__* palette; TYPE_1__ surface_desc; struct ddraw* ddraw; } ;
struct ddraw {int flags; int wined3d_frontbuffer; scalar_t__ swapchain_window; } ;
struct TYPE_10__ {int left; int top; int right; int bottom; } ;
struct TYPE_9__ {int wined3d_palette; } ;
typedef TYPE_3__ RECT ;
typedef int HRESULT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 scalar_t__ BitBlt (int ,int,int,int,int,int ,int,int,int ) ;
 int DDRAW_GDI_FLIP ;
 int DD_OK ;
 int ERR (char*,...) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int GetDC (int *) ;
 int ReleaseDC (int *,int ) ;
 int SRCCOPY ;
 int SetRect (TYPE_3__*,int ,int ,int ,int ) ;
 int WINED3D_TEXF_POINT ;
 int wined3d_palette_apply_to_dc (int ,int ) ;
 int wined3d_texture_blt (int ,int ,TYPE_3__ const*,int ,int ,TYPE_3__ const*,int ,int *,int ) ;
 int wined3d_texture_get_dc (int ,int ,int *) ;
 int wined3d_texture_release_dc (int ,int ,int ) ;

HRESULT ddraw_surface_update_frontbuffer(struct ddraw_surface *surface, const RECT *rect, BOOL read)
{
    struct ddraw *ddraw = surface->ddraw;
    HDC surface_dc, screen_dc;
    int x, y, w, h;
    HRESULT hr;
    BOOL ret;
    RECT r;

    if (!rect)
    {
        SetRect(&r, 0, 0, surface->surface_desc.dwWidth, surface->surface_desc.dwHeight);
        rect = &r;
    }

    x = rect->left;
    y = rect->top;
    w = rect->right - rect->left;
    h = rect->bottom - rect->top;

    if (w <= 0 || h <= 0)
        return DD_OK;

    if (ddraw->swapchain_window && !(ddraw->flags & DDRAW_GDI_FLIP))
    {


        if (read)
            return DD_OK;

        return wined3d_texture_blt(ddraw->wined3d_frontbuffer, 0, rect,
                surface->wined3d_texture, surface->sub_resource_idx, rect, 0, ((void*)0), WINED3D_TEXF_POINT);
    }

    if (FAILED(hr = wined3d_texture_get_dc(surface->wined3d_texture, surface->sub_resource_idx, &surface_dc)))
    {
        ERR("Failed to get surface DC, hr %#x.\n", hr);
        return hr;
    }
    if (surface->palette)
        wined3d_palette_apply_to_dc(surface->palette->wined3d_palette, surface_dc);

    if (!(screen_dc = GetDC(((void*)0))))
    {
        wined3d_texture_release_dc(surface->wined3d_texture, surface->sub_resource_idx, surface_dc);
        ERR("Failed to get screen DC.\n");
        return E_FAIL;
    }

    if (read)
        ret = BitBlt(surface_dc, x, y, w, h,
                screen_dc, x, y, SRCCOPY);
    else
        ret = BitBlt(screen_dc, x, y, w, h,
                surface_dc, x, y, SRCCOPY);

    ReleaseDC(((void*)0), screen_dc);
    wined3d_texture_release_dc(surface->wined3d_texture, surface->sub_resource_idx, surface_dc);

    if (!ret)
    {
        ERR("Failed to blit to/from screen.\n");
        return E_FAIL;
    }

    return DD_OK;
}
