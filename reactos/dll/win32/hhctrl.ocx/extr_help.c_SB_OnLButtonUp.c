
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {short iNavWidth; } ;
struct TYPE_6__ {TYPE_1__ WinType; } ;
struct TYPE_5__ {short x; short y; } ;
typedef TYPE_2__ POINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_3__ HHInfo ;


 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 scalar_t__ HIWORD (int ) ;
 int Help_OnSize (int ) ;
 scalar_t__ LOWORD (int ) ;
 int ReleaseCapture () ;

__attribute__((used)) static void SB_OnLButtonUp(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
    HHInfo *pHHInfo = (HHInfo *)GetWindowLongPtrW(hWnd, 0);
    POINT pt;

    pt.x = (short)LOWORD(lParam);
    pt.y = (short)HIWORD(lParam);


    pHHInfo->WinType.iNavWidth += pt.x;
    Help_OnSize(hWnd);

    ReleaseCapture();
}
