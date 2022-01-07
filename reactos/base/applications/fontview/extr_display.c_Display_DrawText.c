
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {char* szTypeFaceName; char** nSizes; int hSizeFont; int * szString; int * hFonts; int hCharSetFont; int szFormat; int hCaptionFont; } ;
struct TYPE_5__ {int tmDescent; scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRIC ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;
typedef TYPE_2__ DISPLAYDATA ;


 int BLACK_PEN ;
 int GetStockObject (int ) ;
 int GetTextMetrics (int ,TYPE_1__*) ;
 int LF_FULLFACESIZE ;
 int LineTo (int ,int,int) ;
 int MAX_SIZES ;
 int MoveToEx (int ,int ,int,int *) ;
 scalar_t__ SPACING1 ;
 scalar_t__ SPACING2 ;
 int SelectObject (int ,int ) ;
 int TextOutW (int ,int,int,int *,int ) ;
 int swprintf (int *,char*,...) ;
 scalar_t__ wcslen (int *) ;

__attribute__((used)) static int
Display_DrawText(HDC hDC, DISPLAYDATA* pData, int nYPos)
{
 HFONT hOldFont;
 TEXTMETRIC tm;
 int i, y;
 WCHAR szSize[5];
 WCHAR szCaption[LF_FULLFACESIZE + 20];


 y = -nYPos;

 hOldFont = SelectObject(hDC, pData->hCaptionFont);
 GetTextMetrics(hDC, &tm);

 swprintf(szCaption, L"%s%s", pData->szTypeFaceName, pData->szFormat);
 TextOutW(hDC, 0, y, szCaption, (INT)wcslen(szCaption));
 y += tm.tmHeight + SPACING1;


 SelectObject(hDC, GetStockObject(BLACK_PEN));
 MoveToEx(hDC, 0, y, ((void*)0));
 LineTo(hDC, 10000, y);
 y += SPACING2;




 SelectObject(hDC, pData->hCharSetFont);
 GetTextMetrics(hDC, &tm);
 swprintf(szCaption, L"abcdefghijklmnopqrstuvwxyz");
 TextOutW(hDC, 0, y, szCaption, (INT)wcslen(szCaption));
 y += tm.tmHeight + 1;

 swprintf(szCaption, L"ABCDEFGHIJKLMNOPQRSTUVWXYZ");
 TextOutW(hDC, 0, y, szCaption, (INT)wcslen(szCaption));
 y += tm.tmHeight + 1;

 swprintf(szCaption, L"0123456789.:,;(\"~!@#$%%^&*')");
 TextOutW(hDC, 0, y, szCaption, (INT)wcslen(szCaption));
 y += tm.tmHeight + 1;


 SelectObject(hDC, GetStockObject(BLACK_PEN));
 MoveToEx(hDC, 0, y, ((void*)0));
 LineTo(hDC, 10000, y);
 y += SPACING2;


 for (i = 0; i < MAX_SIZES; i++)
 {
  SelectObject(hDC, pData->hFonts[i]);
  TextOutW(hDC, 20, y, pData->szString, (INT)wcslen(pData->szString));
  GetTextMetrics(hDC, &tm);
  y += tm.tmHeight + 1;
  SelectObject(hDC, pData->hSizeFont);
  swprintf(szSize, L"%d", pData->nSizes[i]);
  TextOutW(hDC, 0, y - 13 - tm.tmDescent, szSize, (INT)wcslen(szSize));
 }
 SelectObject(hDC, hOldFont);

 return y;
}
