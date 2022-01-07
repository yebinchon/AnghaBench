
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int Scheme; int lpButText; int lpMessText; int lpMessBox; int lpWinTxt; int lpAct; int lpInAct; int hMenu; scalar_t__ hClientFont; } ;
typedef TYPE_1__* PPREVIEW_DATA ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int COLOR_SCHEME ;


 int AllocAndLoadString (int *,int ,int ) ;
 int DEFAULT_GUI_FONT ;
 int EnableMenuItem (int ,int,int) ;
 scalar_t__ GetStockObject (int ) ;
 int HiliteMenuItem (int ,int ,int,int) ;
 int IDR_PREVIEW_MENU ;
 int IDS_ACTWIN ;
 int IDS_BUTTEXT ;
 int IDS_INACTWIN ;
 int IDS_MESSBOX ;
 int IDS_MESSTEXT ;
 int IDS_WINTEXT ;
 int LoadCurrentScheme (int *) ;
 int LoadMenu (int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int MF_BYPOSITION ;
 int MF_GRAYED ;
 int MF_HILITE ;
 int UpdatePreviewTheme (int ,TYPE_1__*,int *) ;
 int hApplet ;

__attribute__((used)) static VOID
OnCreate(HWND hwnd, PPREVIEW_DATA pPreviewData)
{
    COLOR_SCHEME *scheme;

    pPreviewData->hClientFont = (HFONT)GetStockObject(DEFAULT_GUI_FONT);


    pPreviewData->hMenu = LoadMenu(hApplet, MAKEINTRESOURCE(IDR_PREVIEW_MENU));
    EnableMenuItem(pPreviewData->hMenu,
                   1, MF_BYPOSITION | MF_GRAYED);
    HiliteMenuItem(hwnd, pPreviewData->hMenu,
                   2, MF_BYPOSITION | MF_HILITE);




    AllocAndLoadString(&pPreviewData->lpInAct, hApplet, IDS_INACTWIN);
    AllocAndLoadString(&pPreviewData->lpAct, hApplet, IDS_ACTWIN);
    AllocAndLoadString(&pPreviewData->lpWinTxt, hApplet, IDS_WINTEXT);
    AllocAndLoadString(&pPreviewData->lpMessBox, hApplet, IDS_MESSBOX);
    AllocAndLoadString(&pPreviewData->lpMessText, hApplet, IDS_MESSTEXT);
    AllocAndLoadString(&pPreviewData->lpButText, hApplet, IDS_BUTTEXT);

    scheme = &pPreviewData->Scheme;
    LoadCurrentScheme(scheme);

    UpdatePreviewTheme(hwnd, pPreviewData, scheme);
}
