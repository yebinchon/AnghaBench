
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Format; int RefreshRate; int Height; int Width; } ;
struct TYPE_5__ {int dmBitsPerPel; int dmDisplayFrequency; int dmPelsHeight; int dmPelsWidth; } ;
typedef int LPCSTR ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DEVMODEA ;
typedef int D3DFORMAT ;
typedef TYPE_2__ D3DDISPLAYMODE ;
typedef int D3D9_Unknown6BC ;


 int D3DFMT_X8R8G8B8 ;
 scalar_t__ EnumDisplaySettingsA (int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ TRUE ;

void CreateDisplayModeList(LPCSTR lpszDeviceName, D3DDISPLAYMODE* pDisplayModes, DWORD* pNumDisplayModes, D3DFORMAT Default16BitFormat, D3D9_Unknown6BC* pUnknown6BC)
{
    DEVMODEA DevMode;
    DWORD ModeIndex = 0;
    DWORD ValidModes = 0;

    while (TRUE == EnumDisplaySettingsA(lpszDeviceName, ModeIndex, &DevMode))
    {
        D3DFORMAT DefaultFormat;

        if (DevMode.dmBitsPerPel != 15 &&
            DevMode.dmBitsPerPel != 16 &&
            DevMode.dmBitsPerPel != 32)
        {
            ++ModeIndex;
            continue;
        }

        ++ValidModes;

        if (DevMode.dmBitsPerPel == 15 || DevMode.dmBitsPerPel == 16)
        {
            if (((void*)0) == pUnknown6BC)
            {
                ++ModeIndex;
                continue;
            }

            DefaultFormat = Default16BitFormat;
        }
        else
        {
            DefaultFormat = D3DFMT_X8R8G8B8;
        }

        if (((void*)0) != pDisplayModes)
        {
            if (ValidModes == *pNumDisplayModes)
                break;

            pDisplayModes->Width = DevMode.dmPelsWidth;
            pDisplayModes->Height = DevMode.dmPelsHeight;
            pDisplayModes->RefreshRate = DevMode.dmDisplayFrequency;
            pDisplayModes->Format = DefaultFormat;
            ++pDisplayModes;
        }

        ++ModeIndex;
    }

    *pNumDisplayModes = ValidModes;
}
