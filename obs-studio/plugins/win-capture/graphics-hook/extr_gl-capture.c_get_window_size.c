
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int right; int bottom; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;


 int GetClientRect (int ,TYPE_1__*) ;
 int WindowFromDC (int ) ;
 scalar_t__ darkest_dungeon_fix ;

__attribute__((used)) static void get_window_size(HDC hdc, uint32_t *cx, uint32_t *cy)
{
 HWND hwnd = WindowFromDC(hdc);
 RECT rc = {0};

 if (darkest_dungeon_fix) {
  *cx = 1920;
  *cy = 1080;
 } else {
  GetClientRect(hwnd, &rc);
  *cx = rc.right;
  *cy = rc.bottom;
 }
}
