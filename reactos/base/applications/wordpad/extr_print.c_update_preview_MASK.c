#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ right; scalar_t__ bottom; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_11__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct TYPE_12__ {int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_14__ {int pages_shown; scalar_t__ page; void* hdc2; TYPE_2__ bmSize; void* hdc; int /*<<< orphan*/  textlength; TYPE_3__ rcPage; } ;
struct TYPE_10__ {int /*<<< orphan*/  cpMax; scalar_t__ cpMin; } ;
struct TYPE_13__ {int /*<<< orphan*/  hdcTarget; TYPE_3__ rcPage; void* hdc; TYPE_1__ chrg; TYPE_3__ rc; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_4__ FORMATRANGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_EDITOR ; 
 int /*<<< orphan*/  IDC_PREVIEW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_6__ margins ; 
 TYPE_5__ preview ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(HWND hMainWnd)
{
    RECT paper;
    HWND hEditorWnd = FUNC4(hMainWnd, IDC_EDITOR);
    HWND hwndPreview = FUNC4(hMainWnd, IDC_PREVIEW);
    HBITMAP hBitmapCapture;
    FORMATRANGE fr;
    HDC hdc = FUNC3(hwndPreview);

    fr.hdcTarget = FUNC10();
    fr.rc = fr.rcPage = preview.rcPage;
    fr.rc.left += margins.left;
    fr.rc.top += margins.top;
    fr.rc.bottom -= margins.bottom;
    fr.rc.right -= margins.right;

    fr.chrg.cpMin = 0;
    fr.chrg.cpMax = preview.textlength;

    FUNC8(&paper, 0, 0, preview.bmSize.cx, preview.bmSize.cy);

    if (!preview.hdc) {
        preview.hdc = FUNC1(hdc);
        hBitmapCapture = FUNC0(hdc, preview.bmSize.cx, preview.bmSize.cy);
        FUNC7(preview.hdc, hBitmapCapture);
    }

    fr.hdc = preview.hdc;
    FUNC9(hEditorWnd, &fr, &paper, preview.page);

    if(preview.pages_shown > 1)
    {
        if (!preview.hdc2)
        {
            preview.hdc2 = FUNC1(hdc);
            hBitmapCapture = FUNC0(hdc,
                                                    preview.bmSize.cx,
                                                    preview.bmSize.cy);
            FUNC7(preview.hdc2, hBitmapCapture);
        }

        fr.hdc = preview.hdc2;
        FUNC9(hEditorWnd, &fr, &fr.rcPage, preview.page + 1);
    }
    FUNC2(fr.hdcTarget);
    FUNC6(hwndPreview, hdc);

    FUNC5(hwndPreview, NULL, FALSE);
    FUNC11(hMainWnd);
    FUNC12(hMainWnd);
}