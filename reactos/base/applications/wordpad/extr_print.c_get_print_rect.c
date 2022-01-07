
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bottom; scalar_t__ right; int top; int left; } ;
typedef int RECT ;
typedef scalar_t__ HDC ;


 int GetDeviceCaps (scalar_t__,int ) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 int PHYSICALHEIGHT ;
 int PHYSICALWIDTH ;
 int SetRect (int *,int ,int ,scalar_t__,scalar_t__) ;
 int centmm_to_twips (int) ;
 int devunits_to_twips (int,int) ;
 TYPE_1__ margins ;

__attribute__((used)) static RECT get_print_rect(HDC hdc)
{
    RECT rc;
    int width, height;

    if(hdc)
    {
        int dpiY = GetDeviceCaps(hdc, LOGPIXELSY);
        int dpiX = GetDeviceCaps(hdc, LOGPIXELSX);
        width = devunits_to_twips(GetDeviceCaps(hdc, PHYSICALWIDTH), dpiX);
        height = devunits_to_twips(GetDeviceCaps(hdc, PHYSICALHEIGHT), dpiY);
    } else
    {
        width = centmm_to_twips(18500);
        height = centmm_to_twips(27000);
    }

    SetRect(&rc, margins.left, margins.top, width - margins.right, height - margins.bottom);

    return rc;
}
