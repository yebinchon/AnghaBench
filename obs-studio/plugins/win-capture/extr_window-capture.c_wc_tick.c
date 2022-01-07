
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cursor_hidden; scalar_t__ valid; } ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; } ;
struct window_capture {float check_window_timer; float cursor_check_time; float resize_timer; scalar_t__ window; TYPE_2__ capture; int compatibility; int cursor; TYPE_1__ last_rect; int executable; int title; int class; int priority; int source; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ DWORD ;


 float CURSOR_CHECK_TIME ;
 int EXCLUDE_MINIMIZED ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetForegroundWindow () ;
 int GetWindowThreadProcessId (scalar_t__,scalar_t__*) ;
 scalar_t__ IsIconic (scalar_t__) ;
 int IsWindow (scalar_t__) ;
 float RESIZE_CHECK_TIME ;
 int dc_capture_capture (TYPE_2__*,scalar_t__) ;
 int dc_capture_free (TYPE_2__*) ;
 int dc_capture_init (TYPE_2__*,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ find_window (int ,int ,int ,int ,int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_showing (int ) ;

__attribute__((used)) static void wc_tick(void *data, float seconds)
{
 struct window_capture *wc = data;
 RECT rect;
 bool reset_capture = 0;

 if (!obs_source_showing(wc->source))
  return;

 if (!wc->window || !IsWindow(wc->window)) {
  if (!wc->title && !wc->class)
   return;

  wc->check_window_timer += seconds;

  if (wc->check_window_timer < 1.0f) {
   if (wc->capture.valid)
    dc_capture_free(&wc->capture);
   return;
  }

  wc->check_window_timer = 0.0f;

  wc->window = find_window(EXCLUDE_MINIMIZED, wc->priority,
      wc->class, wc->title, wc->executable);
  if (!wc->window) {
   if (wc->capture.valid)
    dc_capture_free(&wc->capture);
   return;
  }

  reset_capture = 1;

 } else if (IsIconic(wc->window)) {
  return;
 }

 wc->cursor_check_time += seconds;
 if (wc->cursor_check_time > CURSOR_CHECK_TIME) {
  DWORD foreground_pid, target_pid;


  if (!GetWindowThreadProcessId(GetForegroundWindow(),
           &foreground_pid))
   foreground_pid = 0;

  if (!GetWindowThreadProcessId(wc->window, &target_pid))
   target_pid = 0;

  if (foreground_pid && target_pid &&
      foreground_pid != target_pid)
   wc->capture.cursor_hidden = 1;
  else
   wc->capture.cursor_hidden = 0;

  wc->cursor_check_time = 0.0f;
 }

 obs_enter_graphics();

 GetClientRect(wc->window, &rect);

 if (!reset_capture) {
  wc->resize_timer += seconds;

  if (wc->resize_timer >= RESIZE_CHECK_TIME) {
   if (rect.bottom != wc->last_rect.bottom ||
       rect.right != wc->last_rect.right)
    reset_capture = 1;

   wc->resize_timer = 0.0f;
  }
 }

 if (reset_capture) {
  wc->resize_timer = 0.0f;
  wc->last_rect = rect;
  dc_capture_free(&wc->capture);
  dc_capture_init(&wc->capture, 0, 0, rect.right, rect.bottom,
    wc->cursor, wc->compatibility);
 }

 dc_capture_capture(&wc->capture, wc->window);
 obs_leave_graphics();
}
