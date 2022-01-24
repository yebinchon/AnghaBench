#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int /*<<< orphan*/  rcDialogButton; int /*<<< orphan*/  rcDialogCaptionButtons; int /*<<< orphan*/  rcDialogCaption; int /*<<< orphan*/  rcDialogFrame; int /*<<< orphan*/  rcActiveScroll; int /*<<< orphan*/  rcActiveClient; int /*<<< orphan*/  rcActiveMenuBar; int /*<<< orphan*/  rcActiveCaptionButtons; int /*<<< orphan*/  rcActiveCaption; int /*<<< orphan*/  rcActiveFrame; int /*<<< orphan*/  rcInactiveCaptionButtons; int /*<<< orphan*/  rcInactiveCaption; int /*<<< orphan*/  rcInactiveFrame; } ;
typedef  TYPE_1__* PPREVIEW_DATA ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 

__attribute__((used)) static VOID
FUNC5(HWND hwnd, int xPos, int yPos, PPREVIEW_DATA pPreviewData)
{
    UINT type = IDX_DESKTOP;
    POINT pt;

    pt.x = xPos;
    pt.y = yPos;

    if (FUNC3(&pPreviewData->rcInactiveFrame, pt))
        type = IDX_INACTIVE_BORDER;

    if (FUNC3(&pPreviewData->rcInactiveCaption, pt))
        type = IDX_INACTIVE_CAPTION;

    if (FUNC3(&pPreviewData->rcInactiveCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;

    if (FUNC3(&pPreviewData->rcActiveFrame, pt))
        type = IDX_ACTIVE_BORDER;

    if (FUNC3(&pPreviewData->rcActiveCaption, pt))
        type = IDX_ACTIVE_CAPTION;

    if (FUNC3(&pPreviewData->rcActiveCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;

//    if (PtInRect(&pPreviewData->rcSelectedMenuItem, pt))
//        type = IDX_SELECTION;

    if (FUNC3(&pPreviewData->rcActiveMenuBar, pt))
        type = IDX_MENU;

    if (FUNC3(&pPreviewData->rcActiveClient, pt))
        type = IDX_WINDOW;

    if (FUNC3(&pPreviewData->rcActiveScroll, pt))
        type = IDX_SCROLLBAR;

    if (FUNC3(&pPreviewData->rcDialogFrame, pt))
        type = IDX_DIALOG;

    if (FUNC3(&pPreviewData->rcDialogCaption, pt))
        type = IDX_ACTIVE_CAPTION;

    if (FUNC3(&pPreviewData->rcDialogCaptionButtons, pt))
        type = IDX_CAPTION_BUTTON;

    if (FUNC3(&pPreviewData->rcDialogButton, pt))
        type = IDX_3D_OBJECTS;

    FUNC4(FUNC0(hwnd),
                WM_COMMAND,
                FUNC2(FUNC1(hwnd, GWLP_ID), 0),
                (LPARAM)type);
}