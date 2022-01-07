
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nclm ;
struct TYPE_10__ {int lfWeight; } ;
struct TYPE_9__ {int clrInfoText; int clrInfoBk; } ;
struct TYPE_8__ {int cbSize; TYPE_6__ lfStatusFont; } ;
struct TYPE_7__ {void* hTitleFont; void* hFont; int clrText; int clrBk; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef TYPE_2__ NONCLIENTMETRICSW ;


 void* CreateFontIndirectW (TYPE_6__*) ;
 int DeleteObject (void*) ;
 int FW_BOLD ;
 int SPI_GETNONCLIENTMETRICS ;
 int SystemParametersInfoW (int ,int,TYPE_2__*,int ) ;
 TYPE_3__ comctl32_color ;

__attribute__((used)) static void
TOOLTIPS_InitSystemSettings (TOOLTIPS_INFO *infoPtr)
{
    NONCLIENTMETRICSW nclm;

    infoPtr->clrBk = comctl32_color.clrInfoBk;
    infoPtr->clrText = comctl32_color.clrInfoText;

    DeleteObject (infoPtr->hFont);
    nclm.cbSize = sizeof(nclm);
    SystemParametersInfoW (SPI_GETNONCLIENTMETRICS, sizeof(nclm), &nclm, 0);
    infoPtr->hFont = CreateFontIndirectW (&nclm.lfStatusFont);

    DeleteObject (infoPtr->hTitleFont);
    nclm.lfStatusFont.lfWeight = FW_BOLD;
    infoPtr->hTitleFont = CreateFontIndirectW (&nclm.lfStatusFont);
}
