
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DFORMAT ;






 int D3DFMT_X1R5G5B5 ;
 int D3DFMT_X4R4G4B4 ;
 int D3DFMT_X8B8G8R8 ;
 int D3DFMT_X8R8G8B8 ;

__attribute__((used)) static D3DFORMAT RemoveAlphaChannel(D3DFORMAT CheckFormat)
{
    switch (CheckFormat)
    {
    case 128:
        return D3DFMT_X8R8G8B8;

    case 131:
        return D3DFMT_X1R5G5B5;

    case 130:
        return D3DFMT_X4R4G4B4;

    case 129:
        return D3DFMT_X8B8G8R8;

    default:

        break;
    }

    return CheckFormat;
}
