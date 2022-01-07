
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;


 int MK_LBUTTON ;

__attribute__((used)) static void SB_OnMouseMove(HWND hWnd, WPARAM wParam, LPARAM lParam)
{

    if (!(wParam & MK_LBUTTON))
        return;
}
