
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int rcDialogButton; int rcDialogCaptionButtons; int rcDialogCaption; int rcDialogFrame; int rcActiveScroll; int rcActiveClient; int rcActiveMenuBar; int rcActiveCaptionButtons; int rcActiveCaption; int rcActiveFrame; int rcInactiveCaptionButtons; int rcInactiveCaption; int rcInactiveFrame; } ;
typedef TYPE_1__* PPREVIEW_DATA ;
typedef TYPE_2__ POINT ;
typedef int LPARAM ;
typedef int HWND ;


 int GWLP_ID ;
 int GetParent (int ) ;
 int GetWindowLongPtrW (int ,int ) ;
 scalar_t__ IDX_3D_OBJECTS ;
 scalar_t__ IDX_ACTIVE_BORDER ;
 scalar_t__ IDX_ACTIVE_CAPTION ;
 scalar_t__ IDX_CAPTION_BUTTON ;
 scalar_t__ IDX_DESKTOP ;
 scalar_t__ IDX_DIALOG ;
 scalar_t__ IDX_INACTIVE_BORDER ;
 scalar_t__ IDX_INACTIVE_CAPTION ;
 scalar_t__ IDX_MENU ;
 scalar_t__ IDX_SCROLLBAR ;
 scalar_t__ IDX_WINDOW ;
 int MAKEWPARAM (int ,int ) ;
 scalar_t__ PtInRect (int *,TYPE_2__) ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_COMMAND ;

__attribute__((used)) static VOID
OnLButtonDown(HWND hwnd, int xPos, int yPos, PPREVIEW_DATA pPreviewData)
{
    UINT type = IDX_DESKTOP;
    POINT pt;

    pt.x = xPos;
    pt.y = yPos;

    if (PtInRect(&pPreviewData->rcInactiveFrame, pt))
        type = IDX_INACTIVE_BORDER;

    if (PtInRect(&pPreviewData->rcInactiveCaption, pt))
        type = IDX_INACTIVE_CAPTION;

    if (PtInRect(&pPreviewData->rcInactiveCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;

    if (PtInRect(&pPreviewData->rcActiveFrame, pt))
        type = IDX_ACTIVE_BORDER;

    if (PtInRect(&pPreviewData->rcActiveCaption, pt))
        type = IDX_ACTIVE_CAPTION;

    if (PtInRect(&pPreviewData->rcActiveCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;




    if (PtInRect(&pPreviewData->rcActiveMenuBar, pt))
        type = IDX_MENU;

    if (PtInRect(&pPreviewData->rcActiveClient, pt))
        type = IDX_WINDOW;

    if (PtInRect(&pPreviewData->rcActiveScroll, pt))
        type = IDX_SCROLLBAR;

    if (PtInRect(&pPreviewData->rcDialogFrame, pt))
        type = IDX_DIALOG;

    if (PtInRect(&pPreviewData->rcDialogCaption, pt))
        type = IDX_ACTIVE_CAPTION;

    if (PtInRect(&pPreviewData->rcDialogCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;

    if (PtInRect(&pPreviewData->rcDialogButton, pt))
        type = IDX_3D_OBJECTS;

    SendMessage(GetParent(hwnd),
                WM_COMMAND,
                MAKEWPARAM(GetWindowLongPtrW(hwnd, GWLP_ID), 0),
                (LPARAM)type);
}
