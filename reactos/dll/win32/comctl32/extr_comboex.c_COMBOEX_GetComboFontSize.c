
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int hwndCombo; } ;
struct TYPE_6__ {int cy; } ;
typedef TYPE_1__ SIZE ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef TYPE_2__ COMBOEX_INFO ;


 int GetDC (int ) ;
 int GetTextExtentPointW (int ,char const*,int,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,scalar_t__,int ) ;
 int WM_GETFONT ;

__attribute__((used)) static void COMBOEX_GetComboFontSize (const COMBOEX_INFO *infoPtr, SIZE *size)
{
    static const WCHAR strA[] = { 'A', 0 };
    HFONT nfont, ofont;
    HDC mydc;

    mydc = GetDC (0);
    nfont = (HFONT)SendMessageW (infoPtr->hwndCombo, WM_GETFONT, 0, 0);
    ofont = SelectObject (mydc, nfont);
    GetTextExtentPointW (mydc, strA, 1, size);
    SelectObject (mydc, ofont);
    ReleaseDC (0, mydc);
    TRACE("selected font hwnd=%p, height=%d\n", nfont, size->cy);
}
