#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RtfData {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; } ;
struct TYPE_7__ {TYPE_4__ bmiHeader; TYPE_1__* bmiColors; } ;
struct TYPE_6__ {int rgbRed; int rgbGreen; int rgbBlue; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int BOOL ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CBM_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,void const*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct RtfData*,char*) ; 
 scalar_t__ FUNC13 (struct RtfData*,void*,scalar_t__) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCAND ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  SRCPAINT ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC21(struct RtfData* rd, const BITMAPINFO* bi,
                                            const void* pict, unsigned nc)
{
    HDC                 hdc, hdcMask, hdcMem, hdcEMF;
    HBITMAP             hbm, hbmMask, hbmOldMask, hbmOldMem;
    HENHMETAFILE        hEMF;
    BOOL                ret = FALSE;
    void*               data;
    UINT                sz;

    hbm = FUNC4(hdc = FUNC9(0), &bi->bmiHeader,
                         CBM_INIT, pict, bi, DIB_RGB_COLORS);

    hdcMem = FUNC3(hdc);
    hbmOldMem = FUNC18(hdcMem, hbm);

    /* create the mask bitmap from the main bitmap */
    hdcMask = FUNC3(hdc);
    hbmMask = FUNC2(bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, 1, 1, NULL);
    hbmOldMask = FUNC18(hdcMask, hbmMask);
    FUNC19(hdcMem,
               FUNC16(bi->bmiColors[nc - 1].rgbRed,
                   bi->bmiColors[nc - 1].rgbGreen,
                   bi->bmiColors[nc - 1].rgbBlue));
    FUNC0(hdcMask, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCCOPY);

    /* sets to RGB(0,0,0) the transparent bits in main bitmap */
    FUNC19(hdcMem, FUNC16(0,0,0));
    FUNC20(hdcMem, FUNC16(255,255,255));
    FUNC0(hdcMem, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMask, 0, 0, SRCAND);

    FUNC18(hdcMask, hbmOldMask);
    FUNC6(hdcMask);

    FUNC18(hdcMem, hbmOldMem);
    FUNC6(hdcMem);

    /* we create the bitmap on the fly */
    hdcEMF = FUNC5(NULL, NULL, NULL, NULL);
    hdcMem = FUNC3(hdcEMF);

    /* sets to RGB(0,0,0) the transparent bits in final bitmap */
    hbmOldMem = FUNC18(hdcMem, hbmMask);
    FUNC19(hdcEMF, FUNC16(255, 255, 255));
    FUNC20(hdcEMF, FUNC16(0, 0, 0));
    FUNC0(hdcEMF, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCAND);

    /* and copy the remaining bits of main bitmap */
    FUNC18(hdcMem, hbm);
    FUNC0(hdcEMF, 0, 0, bi->bmiHeader.biWidth, bi->bmiHeader.biHeight, hdcMem, 0, 0, SRCPAINT);
    FUNC18(hdcMem, hbmOldMem);
    FUNC6(hdcMem);

    /* do the cleanup */
    FUNC17(0, hdc);
    FUNC8(hbmMask);
    FUNC8(hbm);

    hEMF = FUNC1(hdcEMF);

    /* generate rtf stream */
    sz = FUNC10(hEMF, 0, NULL);
    if (sz && (data = FUNC14(FUNC11(), 0, sz)))
    {
        if (sz == FUNC10(hEMF, sz, data))
        {
            ret = FUNC12(rd, "{\\pict\\emfblip") &&
                FUNC13(rd, data, sz) &&
                FUNC12(rd, "}");
        }
        FUNC15(FUNC11(), 0, data);
    }
    FUNC7(hEMF);

    return ret;
}