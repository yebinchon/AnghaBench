#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ lpButText; scalar_t__ lpMessText; scalar_t__ lpMessBox; scalar_t__ lpWinTxt; scalar_t__ lpAct; scalar_t__ lpInAct; int /*<<< orphan*/  hMenu; int /*<<< orphan*/  hMessageFont; int /*<<< orphan*/  hMenuFont; int /*<<< orphan*/  hCaptionFont; int /*<<< orphan*/  hbrWindow; int /*<<< orphan*/  hbrDesktop; int /*<<< orphan*/  hbrScrollbar; } ;
typedef  TYPE_1__* PPREVIEW_DATA ;
typedef  int /*<<< orphan*/  HLOCAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC3(PPREVIEW_DATA pPreviewData)
{
    FUNC0(pPreviewData->hbrScrollbar);
    FUNC0(pPreviewData->hbrDesktop);
    FUNC0(pPreviewData->hbrWindow);

    FUNC0(pPreviewData->hCaptionFont);
    FUNC0(pPreviewData->hMenuFont);
    FUNC0(pPreviewData->hMessageFont);

    FUNC1(pPreviewData->hMenu);

    FUNC2((HLOCAL)pPreviewData->lpInAct);
    FUNC2((HLOCAL)pPreviewData->lpAct);
    FUNC2((HLOCAL)pPreviewData->lpWinTxt);
    FUNC2((HLOCAL)pPreviewData->lpMessBox);
    FUNC2((HLOCAL)pPreviewData->lpMessText);
    FUNC2((HLOCAL)pPreviewData->lpButText);
}