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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {char* szTypeFaceName; char** nSizes; int /*<<< orphan*/  hSizeFont; int /*<<< orphan*/ * szString; int /*<<< orphan*/ * hFonts; int /*<<< orphan*/  hCharSetFont; int /*<<< orphan*/  szFormat; int /*<<< orphan*/  hCaptionFont; } ;
struct TYPE_5__ {int tmDescent; scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRIC ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ DISPLAYDATA ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LF_FULLFACESIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int MAX_SIZES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ SPACING1 ; 
 scalar_t__ SPACING2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(HDC hDC, DISPLAYDATA* pData, int nYPos)
{
	HFONT hOldFont;
	TEXTMETRIC tm;
	int i, y;
	WCHAR szSize[5];
	WCHAR szCaption[LF_FULLFACESIZE + 20];

	/* This is the location on the DC where we draw */
	y = -nYPos;

	hOldFont = FUNC4(hDC, pData->hCaptionFont);
	FUNC1(hDC, &tm);

	FUNC6(szCaption, L"%s%s", pData->szTypeFaceName, pData->szFormat);
	FUNC5(hDC, 0, y, szCaption, (INT)FUNC7(szCaption));
	y += tm.tmHeight + SPACING1;

	/* Draw a separation Line */
	FUNC4(hDC, FUNC0(BLACK_PEN));
	FUNC3(hDC, 0, y, NULL);
	FUNC2(hDC, 10000, y);
	y += SPACING2;

	/* TODO: Output font info */

	/* Output Character set */
	FUNC4(hDC, pData->hCharSetFont);
	FUNC1(hDC, &tm);
	FUNC6(szCaption, L"abcdefghijklmnopqrstuvwxyz");
	FUNC5(hDC, 0, y, szCaption, (INT)FUNC7(szCaption));
	y += tm.tmHeight + 1;

	FUNC6(szCaption, L"ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	FUNC5(hDC, 0, y, szCaption, (INT)FUNC7(szCaption));
	y += tm.tmHeight + 1;

	FUNC6(szCaption, L"0123456789.:,;(\"~!@#$%%^&*')");
	FUNC5(hDC, 0, y, szCaption, (INT)FUNC7(szCaption));
	y += tm.tmHeight + 1;

	/* Draw a separation Line */
	FUNC4(hDC, FUNC0(BLACK_PEN));
	FUNC3(hDC, 0, y, NULL);
	FUNC2(hDC, 10000, y);
	y += SPACING2;

	/* Output the strings for different sizes */
	for (i = 0; i < MAX_SIZES; i++)
	{
		FUNC4(hDC, pData->hFonts[i]);
		FUNC5(hDC, 20, y, pData->szString, (INT)FUNC7(pData->szString));
		FUNC1(hDC, &tm);
		y += tm.tmHeight + 1;
		FUNC4(hDC, pData->hSizeFont);
		FUNC6(szSize, L"%d", pData->nSizes[i]);
		FUNC5(hDC, 0, y - 13 - tm.tmDescent, szSize, (INT)FUNC7(szSize));
	}
	FUNC4(hDC, hOldFont);

	return y;
}