
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Format; int RefreshRate; int Height; int Width; } ;
struct TYPE_6__ {int dmSize; int dmBitsPerPel; int dmDisplayFrequency; int dmPelsHeight; int dmPelsWidth; } ;
typedef int LPCSTR ;
typedef TYPE_1__ DEVMODEA ;
typedef TYPE_2__ D3DDISPLAYMODE ;
typedef scalar_t__ BOOL ;


 int D3DFMT_P8 ;
 int D3DFMT_R8G8B8 ;
 int D3DFMT_UNKNOWN ;
 int D3DFMT_X8R8G8B8 ;
 int ENUM_CURRENT_SETTINGS ;
 scalar_t__ EnumDisplaySettingsA (int ,int ,TYPE_1__*) ;
 scalar_t__ FALSE ;
 int Get16BitD3DFormat (int ) ;
 scalar_t__ TRUE ;
 int memset (TYPE_1__*,int ,int) ;

BOOL GetAdapterMode(LPCSTR lpszDeviceName, D3DDISPLAYMODE* pMode)
{
    DEVMODEA DevMode;

    memset(&DevMode, 0, sizeof(DEVMODEA));
    DevMode.dmSize = sizeof(DEVMODEA);
    if (FALSE == EnumDisplaySettingsA(lpszDeviceName, ENUM_CURRENT_SETTINGS, &DevMode))
        return FALSE;

    pMode->Width = DevMode.dmPelsWidth;
    pMode->Height = DevMode.dmPelsHeight;
    pMode->RefreshRate = DevMode.dmDisplayFrequency;

    switch (DevMode.dmBitsPerPel)
    {
    case 8:
        pMode->Format = D3DFMT_P8;
        break;

    case 16:
        pMode->Format = Get16BitD3DFormat(lpszDeviceName);
        break;

    case 24:
        pMode->Format = D3DFMT_R8G8B8;
        break;

    case 32:
        pMode->Format = D3DFMT_X8R8G8B8;
        break;

    default:
        pMode->Format = D3DFMT_UNKNOWN;
        break;
    }

    return TRUE;
}
