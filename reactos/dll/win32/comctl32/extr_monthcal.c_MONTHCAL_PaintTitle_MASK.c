#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_17__ {int left; int right; } ;
struct TYPE_16__ {TYPE_1__* calendars; int /*<<< orphan*/  hBoldFont; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * brushes; } ;
struct TYPE_15__ {int right; int left; } ;
struct TYPE_14__ {int cx; } ;
struct TYPE_13__ {scalar_t__ wMonth; scalar_t__ wYear; } ;
struct TYPE_12__ {TYPE_6__ titlemonth; TYPE_6__ titleyear; TYPE_2__ month; TYPE_4__ title; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__ SIZE ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  TYPE_5__ MONTHCAL_INFO ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t BrushTitle ; 
 int /*<<< orphan*/  DATE_YEARMONTH ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,TYPE_3__*) ; 
 scalar_t__ LOCALE_SABBREVMONTHNAME1 ; 
 scalar_t__ LOCALE_SMONTHNAME1 ; 
 scalar_t__ LOCALE_SYEARMONTH ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 size_t MCSC_TITLEBK ; 
 size_t MCSC_TITLETEXT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC14(MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps, INT calIdx)
{
  static const WCHAR mmmmW[] = {'M','M','M','M',0};
  static const WCHAR mmmW[] = {'M','M','M',0};
  static const WCHAR mmW[] = {'M','M',0};
  static const WCHAR fmtyearW[] = {'%','l','d',0};
  static const WCHAR fmtmmW[] = {'%','0','2','d',0};
  static const WCHAR fmtmW[] = {'%','d',0};
  RECT *title = &infoPtr->calendars[calIdx].title;
  const SYSTEMTIME *st = &infoPtr->calendars[calIdx].month;
  WCHAR monthW[80], strW[80], fmtW[80], yearW[6] /* valid year range is 1601-30827 */;
  int yearoffset, monthoffset, shiftX;
  SIZE sz;

  /* fill header box */
  FUNC2(hdc, title, infoPtr->brushes[BrushTitle]);

  /* month/year string */
  FUNC8(hdc, infoPtr->colors[MCSC_TITLEBK]);
  FUNC9(hdc, infoPtr->colors[MCSC_TITLETEXT]);
  FUNC7(hdc, infoPtr->hBoldFont);

  /* draw formatted date string */
  FUNC3(LOCALE_USER_DEFAULT, DATE_YEARMONTH, st, NULL, strW, FUNC0(strW));
  FUNC1(hdc, strW, FUNC10(strW), title, DT_CENTER | DT_VCENTER | DT_SINGLELINE);

  FUNC4(LOCALE_USER_DEFAULT, LOCALE_SYEARMONTH, fmtW, FUNC0(fmtW));
  FUNC13(yearW, fmtyearW, st->wYear);

  /* month is trickier as it's possible to have different format pictures, we'll
     test for M, MM, MMM, and MMMM */
  if (FUNC12(fmtW, mmmmW))
    FUNC4(LOCALE_USER_DEFAULT, LOCALE_SMONTHNAME1+st->wMonth-1, monthW, FUNC0(monthW));
  else if (FUNC12(fmtW, mmmW))
    FUNC4(LOCALE_USER_DEFAULT, LOCALE_SABBREVMONTHNAME1+st->wMonth-1, monthW, FUNC0(monthW));
  else if (FUNC12(fmtW, mmW))
    FUNC13(monthW, fmtmmW, st->wMonth);
  else
    FUNC13(monthW, fmtmW, st->wMonth);

  /* update hit boxes */
  yearoffset = 0;
  while (strW[yearoffset])
  {
    if (!FUNC11(&strW[yearoffset], yearW, FUNC10(yearW)))
        break;
    yearoffset++;
  }

  monthoffset = 0;
  while (strW[monthoffset])
  {
    if (!FUNC11(&strW[monthoffset], monthW, FUNC10(monthW)))
        break;
    monthoffset++;
  }

  /* for left limits use offsets */
  sz.cx = 0;
  if (yearoffset)
    FUNC5(hdc, strW, yearoffset, &sz);
  infoPtr->calendars[calIdx].titleyear.left = sz.cx;

  sz.cx = 0;
  if (monthoffset)
    FUNC5(hdc, strW, monthoffset, &sz);
  infoPtr->calendars[calIdx].titlemonth.left = sz.cx;

  /* for right limits use actual string parts lengths */
  FUNC5(hdc, &strW[yearoffset], FUNC10(yearW), &sz);
  infoPtr->calendars[calIdx].titleyear.right = infoPtr->calendars[calIdx].titleyear.left + sz.cx;

  FUNC5(hdc, monthW, FUNC10(monthW), &sz);
  infoPtr->calendars[calIdx].titlemonth.right = infoPtr->calendars[calIdx].titlemonth.left + sz.cx;

  /* Finally translate rectangles to match center aligned string,
     hit rectangles are relative to title rectangle before translation. */
  FUNC5(hdc, strW, FUNC10(strW), &sz);
  shiftX = (title->right - title->left - sz.cx) / 2 + title->left;
  FUNC6(&infoPtr->calendars[calIdx].titleyear, shiftX, 0);
  FUNC6(&infoPtr->calendars[calIdx].titlemonth, shiftX, 0);
}