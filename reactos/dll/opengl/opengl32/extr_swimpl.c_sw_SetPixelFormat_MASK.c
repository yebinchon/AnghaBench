#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wgl_dc_data {struct sw_framebuffer* sw_data; } ;
struct sw_framebuffer {int /*<<< orphan*/  Hdc; int /*<<< orphan*/  gl_visual; int /*<<< orphan*/  gl_buffer; struct pixel_format const* pixel_format; } ;
struct pixel_format {scalar_t__ iPixelType; unsigned long cAlphaBits; int dwFlags; unsigned long cRedBits; unsigned long cGreenBits; unsigned long cBlueBits; int /*<<< orphan*/  cColorBits; int /*<<< orphan*/  cAccumAlphaBits; int /*<<< orphan*/  cAccumBlueBits; int /*<<< orphan*/  cAccumGreenBits; int /*<<< orphan*/  cAccumRedBits; int /*<<< orphan*/  cDepthBits; } ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct sw_framebuffer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sw_framebuffer*) ; 
 int PFD_DOUBLEBUFFER ; 
 scalar_t__ PFD_TYPE_COLORINDEX ; 
 scalar_t__ PFD_TYPE_RGBA ; 
 int /*<<< orphan*/  STENCIL_BITS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct pixel_format* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC10(HDC hdc, struct wgl_dc_data* dc_data, INT format)
{
    struct sw_framebuffer* fb;
    const struct pixel_format *pixel_format;

    /* So, someone is crazy enough to ask for sw implementation. Announce it. */
    FUNC4("OpenGL software implementation START for hdc %p, format %i!\n", hdc, format);
    
    pixel_format = FUNC5(format, NULL);
    if (!pixel_format)
        return FALSE;

    /* allocate our structure */
    fb = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(*fb));
    if(!fb)
    {
        FUNC0("HeapAlloc FAILED!\n");
        return FALSE;
    }
    /* Set the format */
    fb->pixel_format = pixel_format;

    fb->gl_visual = FUNC7(
            pixel_format->iPixelType == PFD_TYPE_RGBA,
            pixel_format->cAlphaBits != 0,
            (pixel_format->dwFlags & PFD_DOUBLEBUFFER) != 0,
            pixel_format->cDepthBits,
            STENCIL_BITS,
            FUNC9(FUNC9(FUNC9(pixel_format->cAccumRedBits, pixel_format->cAccumGreenBits), pixel_format->cAccumBlueBits), pixel_format->cAccumAlphaBits),
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
        FUNC0("Failed to allocate a GL visual.\n");
        FUNC3(FUNC1(), 0, fb);
        return FALSE;
    }
    
    /* Allocate the framebuffer structure */
    fb->gl_buffer = FUNC6(fb->gl_visual);
    if (!fb->gl_buffer) {
        FUNC0("Failed to allocate the mesa framebuffer structure.\n");
        FUNC8( fb->gl_visual );
        FUNC3(FUNC1(), 0, fb);
        return FALSE;
    }

    /* Save our DC */
    fb->Hdc = hdc;

    /* Everything went fine */
    dc_data->sw_data = fb;
    return TRUE;
}