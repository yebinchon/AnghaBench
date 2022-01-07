
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int right; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef scalar_t__ HGDIOBJ ;
typedef int HDC ;
typedef int DWORD ;


 scalar_t__ CreateBitmap (int,int,int,int,int const*) ;
 scalar_t__ CreatePatternBrush (scalar_t__) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int PATINVERT ;
 int PatBlt (int ,int,scalar_t__,int,scalar_t__,int ) ;
 int ReleaseDC (int ,int ) ;
 int SPLIT_WIDTH ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 scalar_t__ SizingBrush ;
 scalar_t__ SizingPattern ;

__attribute__((used)) static void draw_splitbar(HWND hWnd, int x)
{
    RECT rt;
    HGDIOBJ OldObj;
    HDC hdc = GetDC(hWnd);

    if(!SizingPattern)
    {
        const DWORD Pattern[4] = {0x5555AAAA, 0x5555AAAA, 0x5555AAAA, 0x5555AAAA};
        SizingPattern = CreateBitmap(8, 8, 1, 1, Pattern);
    }
    if(!SizingBrush)
    {
        SizingBrush = CreatePatternBrush(SizingPattern);
    }
    GetClientRect(hWnd, &rt);
    rt.left = x - SPLIT_WIDTH/2;
    rt.right = x + SPLIT_WIDTH/2+1;
    OldObj = SelectObject(hdc, SizingBrush);
    PatBlt(hdc, rt.left, rt.top, rt.right - rt.left, rt.bottom - rt.top, PATINVERT);
    SelectObject(hdc, OldObj);
    ReleaseDC(hWnd, hdc);
}
