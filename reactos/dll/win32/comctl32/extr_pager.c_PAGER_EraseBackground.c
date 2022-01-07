
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_7__ {int hwndSelf; } ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ PAGER_INFO ;
typedef int LRESULT ;
typedef int HWND ;
typedef scalar_t__ HDC ;


 int GetParent (int ) ;
 int MapWindowPoints (int ,int ,TYPE_1__*,int) ;
 int OffsetWindowOrgEx (scalar_t__,scalar_t__,scalar_t__,TYPE_1__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowOrgEx (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int WM_ERASEBKGND ;

__attribute__((used)) static LRESULT
PAGER_EraseBackground (const PAGER_INFO* infoPtr, HDC hdc)
{
    POINT pt, ptorig;
    HWND parent;
    LRESULT ret;

    pt.x = 0;
    pt.y = 0;
    parent = GetParent(infoPtr->hwndSelf);
    MapWindowPoints(infoPtr->hwndSelf, parent, &pt, 1);
    OffsetWindowOrgEx (hdc, pt.x, pt.y, &ptorig);
    ret = SendMessageW (parent, WM_ERASEBKGND, (WPARAM)hdc, 0);
    SetWindowOrgEx (hdc, ptorig.x, ptorig.y, 0);

    return ret;
}
