
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct game_capture {int wait_for_target_startup; int * next_window; } ;
typedef int mi ;
struct TYPE_7__ {scalar_t__ left; scalar_t__ right; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_9__ {int cbSize; TYPE_1__ rcMonitor; int member_0; } ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ right; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ MONITORINFO ;
typedef int HWND ;
typedef int HMONITOR ;
typedef int DWORD ;


 int GWL_STYLE ;
 int GetForegroundWindow () ;
 int GetMonitorInfo (int ,TYPE_3__*) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int MONITOR_DEFAULTTONEAREST ;
 int MonitorFromRect (TYPE_2__*,int ) ;
 int WS_BORDER ;
 int WS_MAXIMIZE ;
 int setup_window (struct game_capture*,int ) ;

__attribute__((used)) static void get_fullscreen_window(struct game_capture *gc)
{
 HWND window = GetForegroundWindow();
 MONITORINFO mi = {0};
 HMONITOR monitor;
 DWORD styles;
 RECT rect;

 gc->next_window = ((void*)0);

 if (!window) {
  return;
 }
 if (!GetWindowRect(window, &rect)) {
  return;
 }


 styles = (DWORD)GetWindowLongPtr(window, GWL_STYLE);
 if ((styles & WS_MAXIMIZE) != 0 && (styles & WS_BORDER) != 0) {
  return;
 }

 monitor = MonitorFromRect(&rect, MONITOR_DEFAULTTONEAREST);
 if (!monitor) {
  return;
 }

 mi.cbSize = sizeof(mi);
 if (!GetMonitorInfo(monitor, &mi)) {
  return;
 }

 if (rect.left == mi.rcMonitor.left &&
     rect.right == mi.rcMonitor.right &&
     rect.bottom == mi.rcMonitor.bottom &&
     rect.top == mi.rcMonitor.top) {
  setup_window(gc, window);
 } else {
  gc->wait_for_target_startup = 1;
 }
}
