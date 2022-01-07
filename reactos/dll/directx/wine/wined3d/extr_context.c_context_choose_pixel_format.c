
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_pixel_format {scalar_t__ iPixelType; scalar_t__ redSize; scalar_t__ greenSize; scalar_t__ blueSize; scalar_t__ alphaSize; scalar_t__ depthSize; scalar_t__ stencilSize; int iPixelFormat; scalar_t__ auxBuffers; scalar_t__ numSamples; scalar_t__ doubleBuffer; scalar_t__ windowDrawable; } ;
struct wined3d_format {scalar_t__ red_size; scalar_t__ green_size; scalar_t__ blue_size; scalar_t__ alpha_size; scalar_t__ depth_size; scalar_t__ stencil_size; int id; } ;
struct wined3d_device {TYPE_1__* adapter; } ;
typedef int pfd ;
struct TYPE_6__ {int nSize; int nVersion; int dwFlags; scalar_t__ cAlphaBits; scalar_t__ cColorBits; scalar_t__ cDepthBits; scalar_t__ cStencilBits; int iLayerType; int iPixelType; } ;
struct TYPE_5__ {unsigned int cfg_count; struct wined3d_pixel_format* cfgs; } ;
typedef TYPE_2__ PIXELFORMATDESCRIPTOR ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int ChoosePixelFormat (int ,TYPE_2__*) ;
 int ERR (char*) ;
 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int TRACE (char*,...) ;
 scalar_t__ WGL_TYPE_RGBA_ARB ;
 int debug_d3dformat (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int context_choose_pixel_format(const struct wined3d_device *device, HDC hdc,
        const struct wined3d_format *color_format, const struct wined3d_format *ds_format,
        BOOL auxBuffers)
{
    unsigned int cfg_count = device->adapter->cfg_count;
    unsigned int current_value;
    PIXELFORMATDESCRIPTOR pfd;
    int iPixelFormat = 0;
    unsigned int i;

    TRACE("device %p, dc %p, color_format %s, ds_format %s, aux_buffers %#x.\n",
            device, hdc, debug_d3dformat(color_format->id), debug_d3dformat(ds_format->id),
            auxBuffers);

    current_value = 0;
    for (i = 0; i < cfg_count; ++i)
    {
        const struct wined3d_pixel_format *cfg = &device->adapter->cfgs[i];
        unsigned int value;



        if (cfg->iPixelType != WGL_TYPE_RGBA_ARB)
            continue;

        if (!(cfg->windowDrawable && cfg->doubleBuffer))
            continue;
        if (cfg->redSize < color_format->red_size)
            continue;
        if (cfg->greenSize < color_format->green_size)
            continue;
        if (cfg->blueSize < color_format->blue_size)
            continue;
        if (cfg->alphaSize < color_format->alpha_size)
            continue;
        if (cfg->depthSize < ds_format->depth_size)
            continue;
        if (ds_format->stencil_size && cfg->stencilSize != ds_format->stencil_size)
            continue;

        if (cfg->numSamples)
            continue;

        value = 1;


        if (cfg->depthSize == ds_format->depth_size)
            value += 1;
        if (cfg->stencilSize == ds_format->stencil_size)
            value += 2;
        if (cfg->alphaSize == color_format->alpha_size)
            value += 4;

        if (auxBuffers && cfg->auxBuffers)
            value += 8;
        if (cfg->redSize == color_format->red_size
                && cfg->greenSize == color_format->green_size
                && cfg->blueSize == color_format->blue_size)
            value += 16;

        if (value > current_value)
        {
            iPixelFormat = cfg->iPixelFormat;
            current_value = value;
        }
    }

    if (!iPixelFormat)
    {
        ERR("Trying to locate a compatible pixel format because an exact match failed.\n");

        memset(&pfd, 0, sizeof(pfd));
        pfd.nSize = sizeof(pfd);
        pfd.nVersion = 1;
        pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER | PFD_DRAW_TO_WINDOW;
        pfd.iPixelType = PFD_TYPE_RGBA;
        pfd.cAlphaBits = color_format->alpha_size;
        pfd.cColorBits = color_format->red_size + color_format->green_size
                + color_format->blue_size + color_format->alpha_size;
        pfd.cDepthBits = ds_format->depth_size;
        pfd.cStencilBits = ds_format->stencil_size;
        pfd.iLayerType = PFD_MAIN_PLANE;

        if (!(iPixelFormat = ChoosePixelFormat(hdc, &pfd)))
        {

            ERR("Can't find a suitable pixel format.\n");
            return 0;
        }
    }

    TRACE("Found iPixelFormat=%d for ColorFormat=%s, DepthStencilFormat=%s.\n",
            iPixelFormat, debug_d3dformat(color_format->id), debug_d3dformat(ds_format->id));
    return iPixelFormat;
}
