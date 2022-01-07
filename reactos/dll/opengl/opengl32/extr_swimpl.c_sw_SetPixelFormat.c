
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wgl_dc_data {struct sw_framebuffer* sw_data; } ;
struct sw_framebuffer {int Hdc; int gl_visual; int gl_buffer; struct pixel_format const* pixel_format; } ;
struct pixel_format {scalar_t__ iPixelType; unsigned long cAlphaBits; int dwFlags; unsigned long cRedBits; unsigned long cGreenBits; unsigned long cBlueBits; int cColorBits; int cAccumAlphaBits; int cAccumBlueBits; int cAccumGreenBits; int cAccumRedBits; int cDepthBits; } ;
typedef int INT ;
typedef int HDC ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct sw_framebuffer* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct sw_framebuffer*) ;
 int PFD_DOUBLEBUFFER ;
 scalar_t__ PFD_TYPE_COLORINDEX ;
 scalar_t__ PFD_TYPE_RGBA ;
 int STENCIL_BITS ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 struct pixel_format* get_format (int ,int *) ;
 int gl_create_framebuffer (int ) ;
 int gl_create_visual (int,int,int,int ,int ,int ,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int gl_destroy_visual (int ) ;
 int max (int ,int ) ;

BOOL sw_SetPixelFormat(HDC hdc, struct wgl_dc_data* dc_data, INT format)
{
    struct sw_framebuffer* fb;
    const struct pixel_format *pixel_format;


    TRACE("OpenGL software implementation START for hdc %p, format %i!\n", hdc, format);

    pixel_format = get_format(format, ((void*)0));
    if (!pixel_format)
        return FALSE;


    fb = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*fb));
    if(!fb)
    {
        ERR("HeapAlloc FAILED!\n");
        return FALSE;
    }

    fb->pixel_format = pixel_format;

    fb->gl_visual = gl_create_visual(
            pixel_format->iPixelType == PFD_TYPE_RGBA,
            pixel_format->cAlphaBits != 0,
            (pixel_format->dwFlags & PFD_DOUBLEBUFFER) != 0,
            pixel_format->cDepthBits,
            STENCIL_BITS,
            max(max(max(pixel_format->cAccumRedBits, pixel_format->cAccumGreenBits), pixel_format->cAccumBlueBits), pixel_format->cAccumAlphaBits),
            pixel_format->iPixelType == PFD_TYPE_COLORINDEX ? pixel_format->cColorBits : 0,
            ((1ul << pixel_format->cRedBits) - 1),
            ((1ul << pixel_format->cGreenBits) - 1),
            ((1ul << pixel_format->cBlueBits) - 1),
            pixel_format->cAlphaBits != 0 ? ((1ul << pixel_format->cAlphaBits) - 1) : 255.0f,
            pixel_format->cRedBits,
            pixel_format->cGreenBits,
            pixel_format->cBlueBits,
            pixel_format->cAlphaBits);

    if(!fb->gl_visual)
    {
        ERR("Failed to allocate a GL visual.\n");
        HeapFree(GetProcessHeap(), 0, fb);
        return FALSE;
    }


    fb->gl_buffer = gl_create_framebuffer(fb->gl_visual);
    if (!fb->gl_buffer) {
        ERR("Failed to allocate the mesa framebuffer structure.\n");
        gl_destroy_visual( fb->gl_visual );
        HeapFree(GetProcessHeap(), 0, fb);
        return FALSE;
    }


    fb->Hdc = hdc;


    dc_data->sw_data = fb;
    return TRUE;
}
