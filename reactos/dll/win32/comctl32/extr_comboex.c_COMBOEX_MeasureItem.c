
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {int hwndSelf; } ;
struct TYPE_8__ {scalar_t__ itemHeight; } ;
struct TYPE_7__ {scalar_t__ cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ MEASUREITEMSTRUCT ;
typedef int LRESULT ;
typedef int HDC ;
typedef TYPE_3__ COMBOEX_INFO ;


 scalar_t__ CBE_EXTRA ;
 int GetDC (int ) ;
 int GetTextExtentPointW (int ,char const*,int,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int TRACE (char*,int ,scalar_t__) ;

__attribute__((used)) static LRESULT COMBOEX_MeasureItem (COMBOEX_INFO const *infoPtr, MEASUREITEMSTRUCT *mis)
{
    static const WCHAR strW[] = { 'W', 0 };
    SIZE mysize;
    HDC hdc;

    hdc = GetDC (0);
    GetTextExtentPointW (hdc, strW, 1, &mysize);
    ReleaseDC (0, hdc);
    mis->itemHeight = mysize.cy + CBE_EXTRA;

    TRACE("adjusted height hwnd=%p, height=%d\n",
   infoPtr->hwndSelf, mis->itemHeight);

    return 0;
}
