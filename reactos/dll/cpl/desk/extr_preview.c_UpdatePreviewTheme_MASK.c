#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/  lfMessageFont; int /*<<< orphan*/  lfMenuFont; int /*<<< orphan*/  lfCaptionFont; int /*<<< orphan*/  iBorderWidth; int /*<<< orphan*/  iScrollWidth; scalar_t__ iMenuHeight; scalar_t__ iCaptionHeight; } ;
struct TYPE_8__ {TYPE_1__ ncMetrics; int /*<<< orphan*/ * crColor; } ;
struct TYPE_7__ {int cxEdge; int cyEdge; TYPE_3__ Scheme; int /*<<< orphan*/ * hMessageFont; int /*<<< orphan*/ * hMenuFont; int /*<<< orphan*/ * hCaptionFont; int /*<<< orphan*/  cyBorder; int /*<<< orphan*/  cxScrollbar; scalar_t__ cyMenu; scalar_t__ cyCaption; int /*<<< orphan*/  cySizeFrame; int /*<<< orphan*/ * hbrWindow; int /*<<< orphan*/ * hbrDesktop; int /*<<< orphan*/ * hbrScrollbar; } ;
typedef  TYPE_2__* PPREVIEW_DATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ COLOR_SCHEME ;

/* Variables and functions */
 size_t COLOR_DESKTOP ; 
 size_t COLOR_SCROLLBAR ; 
 size_t COLOR_WINDOW ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID FUNC4(HWND hwnd, PPREVIEW_DATA pPreviewData, COLOR_SCHEME *scheme)
{
    if (pPreviewData->hbrScrollbar != NULL)
        FUNC2(pPreviewData->hbrScrollbar);
    pPreviewData->hbrScrollbar = FUNC1(scheme->crColor[COLOR_SCROLLBAR]);
    if (pPreviewData->hbrDesktop != NULL)
        FUNC2(pPreviewData->hbrDesktop);

    pPreviewData->hbrDesktop = FUNC1(scheme->crColor[COLOR_DESKTOP]);
    if (pPreviewData->hbrWindow != NULL)
        FUNC2(pPreviewData->hbrWindow);
    pPreviewData->hbrWindow = FUNC1(scheme->crColor[COLOR_WINDOW]);

    pPreviewData->cxEdge = 2;                                       /* SM_CXEDGE */
    pPreviewData->cyEdge = 2;                                       /* SM_CYEDGE */

    pPreviewData->cySizeFrame = scheme->ncMetrics.iBorderWidth;     /* SM_CYSIZEFRAME */

    pPreviewData->cyCaption = scheme->ncMetrics.iCaptionHeight+1;   /* SM_CYCAPTION */
    pPreviewData->cyMenu = scheme->ncMetrics.iMenuHeight -1;        /* SM_CYMENU */
    pPreviewData->cxScrollbar = scheme->ncMetrics.iScrollWidth;     /* SM_CXVSCROLL */
    pPreviewData->cyBorder = scheme->ncMetrics.iBorderWidth;        /* SM_CYBORDER */

    if (pPreviewData->hCaptionFont != NULL)
        FUNC2(pPreviewData->hCaptionFont);
    pPreviewData->hCaptionFont = FUNC0(&scheme->ncMetrics.lfCaptionFont);

    if (pPreviewData->hMenuFont != NULL)
        FUNC2(pPreviewData->hMenuFont);
    pPreviewData->hMenuFont = FUNC0(&scheme->ncMetrics.lfMenuFont);

    if (pPreviewData->hMessageFont != NULL)
        FUNC2(pPreviewData->hMessageFont);
    pPreviewData->hMessageFont = FUNC0(&scheme->ncMetrics.lfMessageFont);

    pPreviewData->Scheme = *scheme;
    FUNC3(hwnd, NULL, FALSE);
}