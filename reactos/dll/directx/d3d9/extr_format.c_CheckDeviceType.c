
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPD3D9_DRIVERCAPS ;
typedef int HRESULT ;
typedef scalar_t__ D3DFORMAT ;
typedef scalar_t__ BOOL ;


 int D3DERR_NOTAVAILABLE ;
 scalar_t__ D3DFMT_A1R5G5B5 ;
 scalar_t__ D3DFMT_A8R8G8B8 ;
 scalar_t__ D3DFMT_X1R5G5B5 ;
 scalar_t__ D3DFMT_X8R8G8B8 ;
 int D3DFORMAT_MEMBEROFGROUP_ARGB ;
 int D3DFORMAT_OP_3DACCELERATION ;
 int D3DFORMAT_OP_CONVERT_TO_ARGB ;
 int D3DFORMAT_OP_DISPLAYMODE ;
 int D3DFORMAT_OP_OFFSCREEN_RENDERTARGET ;
 int D3DFORMAT_OP_SAME_FORMAT_RENDERTARGET ;
 int D3DFORMAT_OP_SAME_FORMAT_UP_TO_ALPHA_RENDERTARGET ;
 int D3D_OK ;
 scalar_t__ FALSE ;
 scalar_t__ IsSupportedFormatOp (int ,scalar_t__,int) ;

HRESULT CheckDeviceType(LPD3D9_DRIVERCAPS pDriverCaps, D3DFORMAT DisplayFormat, D3DFORMAT BackBufferFormat, BOOL Windowed)
{
    if (FALSE == IsSupportedFormatOp(pDriverCaps, DisplayFormat, D3DFORMAT_OP_DISPLAYMODE | D3DFORMAT_OP_3DACCELERATION))
    {
        return D3DERR_NOTAVAILABLE;
    }

    if (DisplayFormat != BackBufferFormat)
    {
        D3DFORMAT AdjustedDisplayFormat = DisplayFormat;

        if (DisplayFormat == D3DFMT_X8R8G8B8)
        {
            DisplayFormat = D3DFMT_A8R8G8B8;
        }
        else if (DisplayFormat == D3DFMT_X1R5G5B5)
        {
            DisplayFormat = D3DFMT_A1R5G5B5;
        }

        if (AdjustedDisplayFormat == BackBufferFormat)
        {
            if (FALSE == IsSupportedFormatOp(pDriverCaps, AdjustedDisplayFormat, D3DFORMAT_OP_SAME_FORMAT_UP_TO_ALPHA_RENDERTARGET))
            {
                return D3DERR_NOTAVAILABLE;
            }

            return D3D_OK;
        }
        else if (FALSE == Windowed)
        {
            return D3DERR_NOTAVAILABLE;
        }

        if (FALSE == IsSupportedFormatOp(pDriverCaps, BackBufferFormat, D3DFORMAT_OP_OFFSCREEN_RENDERTARGET) ||
            FALSE == IsSupportedFormatOp(pDriverCaps, BackBufferFormat, D3DFORMAT_OP_CONVERT_TO_ARGB) ||
            FALSE == IsSupportedFormatOp(pDriverCaps, BackBufferFormat, D3DFORMAT_MEMBEROFGROUP_ARGB))
        {
            return D3DERR_NOTAVAILABLE;
        }
    }
    else
    {
        if (FALSE == IsSupportedFormatOp(pDriverCaps, DisplayFormat, D3DFORMAT_OP_SAME_FORMAT_RENDERTARGET))
        {
            return D3DERR_NOTAVAILABLE;
        }
    }

    return D3D_OK;
}
