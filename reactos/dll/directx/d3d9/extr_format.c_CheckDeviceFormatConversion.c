
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ DevCaps2; } ;
struct TYPE_6__ {TYPE_1__ DriverCaps9; } ;
typedef TYPE_2__* LPD3D9_DRIVERCAPS ;
typedef int HRESULT ;
typedef scalar_t__ D3DFORMAT ;


 int D3DERR_NOTAVAILABLE ;






 int D3DFORMAT_MEMBEROFGROUP_ARGB ;
 int D3DFORMAT_OP_CONVERT_TO_ARGB ;
 int D3D_OK ;
 scalar_t__ FALSE ;
 scalar_t__ IsFourCCFormat (scalar_t__) ;
 scalar_t__ IsSupportedFormatOp (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ RemoveAlphaChannel (scalar_t__) ;

HRESULT CheckDeviceFormatConversion(LPD3D9_DRIVERCAPS pDriverCaps, D3DFORMAT SourceFormat, D3DFORMAT TargetFormat)
{
    D3DFORMAT NonAlphaSourceFormat;
    D3DFORMAT NonAlphaTargetFormat;

    NonAlphaSourceFormat = RemoveAlphaChannel(SourceFormat);
    NonAlphaTargetFormat = RemoveAlphaChannel(TargetFormat);

    if (NonAlphaSourceFormat == NonAlphaTargetFormat)
    {
        return D3D_OK;
    }

    if (FALSE == IsFourCCFormat(SourceFormat))
    {
        switch (SourceFormat)
        {
        case 131:
        case 128:
        case 130:
        case 129:
        case 133:
        case 132:

            break;

        default:
            return D3DERR_NOTAVAILABLE;
        }
    }
    else if (pDriverCaps->DriverCaps9.DevCaps2 == 0)
    {
        return D3D_OK;
    }

    if (FALSE == IsSupportedFormatOp(pDriverCaps, SourceFormat, D3DFORMAT_OP_CONVERT_TO_ARGB) ||
        FALSE == IsSupportedFormatOp(pDriverCaps, TargetFormat, D3DFORMAT_MEMBEROFGROUP_ARGB))
    {
        return D3DERR_NOTAVAILABLE;
    }

    return D3D_OK;
}
