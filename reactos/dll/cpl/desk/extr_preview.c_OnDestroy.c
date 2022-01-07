
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ lpButText; scalar_t__ lpMessText; scalar_t__ lpMessBox; scalar_t__ lpWinTxt; scalar_t__ lpAct; scalar_t__ lpInAct; int hMenu; int hMessageFont; int hMenuFont; int hCaptionFont; int hbrWindow; int hbrDesktop; int hbrScrollbar; } ;
typedef TYPE_1__* PPREVIEW_DATA ;
typedef int HLOCAL ;


 int DeleteObject (int ) ;
 int DestroyMenu (int ) ;
 int LocalFree (int ) ;

__attribute__((used)) static VOID
OnDestroy(PPREVIEW_DATA pPreviewData)
{
    DeleteObject(pPreviewData->hbrScrollbar);
    DeleteObject(pPreviewData->hbrDesktop);
    DeleteObject(pPreviewData->hbrWindow);

    DeleteObject(pPreviewData->hCaptionFont);
    DeleteObject(pPreviewData->hMenuFont);
    DeleteObject(pPreviewData->hMessageFont);

    DestroyMenu(pPreviewData->hMenu);

    LocalFree((HLOCAL)pPreviewData->lpInAct);
    LocalFree((HLOCAL)pPreviewData->lpAct);
    LocalFree((HLOCAL)pPreviewData->lpWinTxt);
    LocalFree((HLOCAL)pPreviewData->lpMessBox);
    LocalFree((HLOCAL)pPreviewData->lpMessText);
    LocalFree((HLOCAL)pPreviewData->lpButText);
}
