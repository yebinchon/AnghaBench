#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int right; scalar_t__ bottom; scalar_t__ top; } ;
typedef  TYPE_1__ RECT ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SRCAND ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TA_CENTER ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 

__attribute__((used)) static void FUNC19(HDC hdcRuler, RECT* drawRect, BOOL NewMetrics, LONG EditLeftmost)
{
    static HDC hdc;

    if(NewMetrics)
    {
        static HBITMAP hBitmap;
        int i, x, y, RulerTextEnd;
        int CmPixels;
        int QuarterCmPixels;
        HFONT hFont;
        WCHAR FontName[] = {'M','S',' ','S','a','n','s',' ','S','e','r','i','f',0};

        if(hdc)
        {
            FUNC4(hdc);
            FUNC5(hBitmap);
        }

        hdc = FUNC2(0);

        CmPixels = FUNC17(FUNC15(1000), FUNC7(hdc, LOGPIXELSX));
        QuarterCmPixels = (int)((float)CmPixels / 4.0);

        hBitmap = FUNC1(hdc, drawRect->right, drawRect->bottom);
        FUNC11(hdc, hBitmap);
        FUNC6(hdc, drawRect, FUNC8(WHITE_BRUSH));

        hFont = FUNC3(10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FontName);

        FUNC11(hdc, hFont);
        FUNC12(hdc, TRANSPARENT);
        FUNC13(hdc, TA_CENTER);
        y = (int)(((float)drawRect->bottom - (float)drawRect->top) / 2.0) + 1;
        RulerTextEnd = drawRect->right - EditLeftmost + 1;
        for(i = 1, x = EditLeftmost; x < (drawRect->right - EditLeftmost + 1); i ++)
        {
            WCHAR str[3];
            WCHAR format[] = {'%','d',0};
            int x2 = x;

            x2 += QuarterCmPixels;
            if(x2 > RulerTextEnd)
                break;

            FUNC10(hdc, x2, y, NULL);
            FUNC9(hdc, x2, y+2);

            x2 += QuarterCmPixels;
            if(x2 > RulerTextEnd)
                break;

            FUNC10(hdc, x2, y - 3, NULL);
            FUNC9(hdc, x2, y + 3);

            x2 += QuarterCmPixels;
            if(x2 > RulerTextEnd)
                break;

            FUNC10(hdc, x2, y, NULL);
            FUNC9(hdc, x2, y+2);

            x += CmPixels;
            if(x > RulerTextEnd)
                break;

            FUNC18(str, format, i);
            FUNC14(hdc, x, 5, str, FUNC16(str));
        }
        FUNC5(hFont);
    }

    FUNC0(hdcRuler, 0, 0, drawRect->right, drawRect->bottom, hdc, 0, 0, SRCAND);
}