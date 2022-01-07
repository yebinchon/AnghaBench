
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int right; int left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_6__ {int left; int right; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPRECT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int COLOR_SCHEME ;


 int DFCS_SCROLLDOWN ;
 int DFCS_SCROLLUP ;
 int DFC_SCROLL ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int MyDrawFrameControl (int ,TYPE_1__*,int ,int ,int *) ;

VOID
MyDrawScrollbar(HDC hdc, LPRECT rc, HBRUSH hbrScrollbar, COLOR_SCHEME *scheme)
{
    RECT rcTop;
    RECT rcBottom;
    RECT rcMiddle;
    int width;

    width = rc->right - rc->left;

    rcTop.left = rc->left;
    rcTop.right = rc->right;
    rcTop.top = rc->top;
    rcTop.bottom = rc->top + width;

    rcMiddle.left = rc->left;
    rcMiddle.right = rc->right;
    rcMiddle.top = rc->top + width;
    rcMiddle.bottom = rc->bottom - width;

    rcBottom.left = rc->left;
    rcBottom.right = rc->right;
    rcBottom.top = rc->bottom - width;
    rcBottom.bottom = rc->bottom;

    MyDrawFrameControl(hdc, &rcTop, DFC_SCROLL, DFCS_SCROLLUP, scheme);
    MyDrawFrameControl(hdc, &rcBottom, DFC_SCROLL, DFCS_SCROLLDOWN, scheme);

    FillRect(hdc, &rcMiddle, hbrScrollbar);
}
