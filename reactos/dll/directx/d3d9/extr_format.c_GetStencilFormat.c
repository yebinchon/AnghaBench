
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPD3D9_DRIVERCAPS ;
typedef int D3DFORMAT ;




 int D3DFMT_D16_LOCKABLE ;



 int IsSupportedFormatOp (int ,int,int ) ;

__attribute__((used)) static D3DFORMAT GetStencilFormat(LPD3D9_DRIVERCAPS pDriverCaps, D3DFORMAT CheckFormat)
{
    switch (CheckFormat)
    {
    case 132:
    case 130:
    case 128:
    case 129:
        if (IsSupportedFormatOp(pDriverCaps, CheckFormat - 1, 0))
            return CheckFormat - 1;
        break;

    case 131:
        if (IsSupportedFormatOp(pDriverCaps, CheckFormat, 0))
            return CheckFormat;
        else
            return D3DFMT_D16_LOCKABLE;

    default:

        break;
    }

    return CheckFormat;
}
