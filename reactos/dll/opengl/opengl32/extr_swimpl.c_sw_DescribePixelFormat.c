
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pixel_format {int cDepthBits; int cAccumAlphaBits; int cAccumBlueBits; int cAccumGreenBits; int cAccumRedBits; int cAccumBits; int cAlphaShift; int cAlphaBits; int cBlueShift; int cBlueBits; int cGreenShift; int cGreenBits; int cRedShift; int cRedBits; int cColorBits; int iPixelType; int dwFlags; } ;
typedef int UINT ;
struct TYPE_3__ {int nSize; int nVersion; scalar_t__ dwDamageMask; scalar_t__ dwVisibleMask; scalar_t__ dwLayerMask; scalar_t__ bReserved; int iLayerType; scalar_t__ cAuxBuffers; int cStencilBits; int cDepthBits; int cAccumAlphaBits; int cAccumBlueBits; int cAccumGreenBits; int cAccumRedBits; int cAccumBits; int cAlphaShift; int cAlphaBits; int cBlueShift; int cBlueBits; int cGreenShift; int cGreenBits; int cRedShift; int cRedBits; int cColorBits; int iPixelType; int dwFlags; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef scalar_t__ INT ;
typedef int HDC ;


 int PFD_MAIN_PLANE ;
 int STENCIL_BITS ;
 int TRACE (char*,scalar_t__) ;
 struct pixel_format* get_format (scalar_t__,scalar_t__*) ;

INT sw_DescribePixelFormat(HDC hdc, INT format, UINT size, PIXELFORMATDESCRIPTOR* descr)
{
    INT ret;
    const struct pixel_format *pixel_format;

    TRACE("Describing format %i.\n", format);

    pixel_format = get_format(format, &ret);
    if(!descr)
        return ret;
    if((format > ret) || (size != sizeof(*descr)))
        return 0;


    descr->nSize = sizeof(*descr);
    descr->nVersion = 1;
    descr->dwFlags = pixel_format->dwFlags;
    descr->iPixelType = pixel_format->iPixelType;
    descr->cColorBits = pixel_format->cColorBits;
    descr->cRedBits = pixel_format->cRedBits;
    descr->cRedShift = pixel_format->cRedShift;
    descr->cGreenBits = pixel_format->cGreenBits;
    descr->cGreenShift = pixel_format->cGreenShift;
    descr->cBlueBits = pixel_format->cBlueBits;
    descr->cBlueShift = pixel_format->cBlueShift;
    descr->cAlphaBits = pixel_format->cAlphaBits;
    descr->cAlphaShift = pixel_format->cAlphaShift;
    descr->cAccumBits = pixel_format->cAccumBits;
    descr->cAccumRedBits = pixel_format->cAccumRedBits;
    descr->cAccumGreenBits = pixel_format->cAccumGreenBits;
    descr->cAccumBlueBits = pixel_format->cAccumBlueBits;
    descr->cAccumAlphaBits = pixel_format->cAccumAlphaBits;
    descr->cDepthBits = pixel_format->cDepthBits;
    descr->cStencilBits = STENCIL_BITS;
    descr->cAuxBuffers = 0;
    descr->iLayerType = PFD_MAIN_PLANE;
    descr->bReserved = 0;
    descr->dwLayerMask = 0;
    descr->dwVisibleMask = 0;
    descr->dwDamageMask = 0;

    return ret;
}
