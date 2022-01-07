
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int right; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_5__ {int left; int right; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPRECT ;
typedef int HDC ;
typedef int COLOR_SCHEME ;
typedef scalar_t__ BOOL ;


 int DFCS_CAPTIONCLOSE ;
 int DFCS_CAPTIONMAX ;
 int DFCS_CAPTIONMIN ;
 int DFC_CAPTION ;
 int MyDrawFrameControl (int ,TYPE_1__*,int ,int ,int *) ;

VOID
MyDrawCaptionButtons(HDC hdc, LPRECT lpRect, BOOL bMinMax, int x, COLOR_SCHEME *scheme)
{
    RECT rc3;
    RECT rc4;
    RECT rc5;

    rc3.left = lpRect->right - 2 - x;
    rc3.top = lpRect->top + 2;
    rc3.right = lpRect->right - 2;
    rc3.bottom = lpRect->bottom - 2;

    MyDrawFrameControl(hdc, &rc3, DFC_CAPTION, DFCS_CAPTIONCLOSE, scheme);

    if (bMinMax)
    {
        rc4.left = rc3.left - x - 2;
        rc4.top = rc3.top;
        rc4.right = rc3.right - x - 2;
        rc4.bottom = rc3.bottom;

        MyDrawFrameControl(hdc, &rc4, DFC_CAPTION, DFCS_CAPTIONMAX, scheme);

        rc5.left = rc4.left - x;
        rc5.top = rc4.top;
        rc5.right = rc4.right - x;
        rc5.bottom = rc4.bottom;

        MyDrawFrameControl(hdc, &rc5, DFC_CAPTION, DFCS_CAPTIONMIN, scheme);
    }
}
